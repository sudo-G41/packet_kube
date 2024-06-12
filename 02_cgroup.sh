#!/bin/bash
cat <<EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter

cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables=1
net.ipv4.ip_forward=1
net.bridge.bridge-nf-call-ip6tables=1
EOF

sudo service containerd restart

sudo sysctl --system

sudo sed -i'' -r -e "/disabled_plugins/a\SystemdCgroup = true" /etc/containerd/config.toml
sudo sed -i 's/disabled_plugins/#disabled_plugins/g' /etc/containerd/config.toml
sudo containerd config default | tee /etc/containerd/config.toml
sudo service containerd restart
