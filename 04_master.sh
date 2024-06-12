#!/bin/bash

case $# in
	0)
		echo "need input"
		;;
	1)
sudo kubeadm reset
sudo kubeadm init --apiserver-advertise-address=$1 > join.txt
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

sudo su
export KUBECONFIG=/etc/kubernetes/admin.conf
sudo kubectl apply -f https://docs.projectcalico.org/v3.25/manifests/calico.yaml
	;;
	*)
		echo "????????????????"
		;;
esac
