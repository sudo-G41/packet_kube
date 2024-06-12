# ip
|name|inter|ip|sub|ge|
|-|-|-|-|-|
|r0|fa0/0|203.237.10.254|255.255.255.0||
|r0|se030|1.1.1.1|255.255.255.252||
|r0|se031|2.2.2.2|255.255.255.252||
|r1|fa0/0|203.237.10.254|255.255.255.0||
|r1|se030|1.1.1.2|255.255.255.252||
|r1|se031|3.3.3.3|255.255.255.252||
|r2|fa0/0|203.237.10.254|255.255.255.0||
|r2|se030|1.1.1.2|255.255.255.252||
|r2|se031|3.3.3.2|255.255.255.252||
|pc1|-|203.237.10.1|255.255.255.0|203.237.10.254|
|pc2|-|203.237.20.1|255.255.255.0|203.237.0.254|
|pc3|-|203.237.30.1|255.255.255.0|203.237.30.254|
|switch|vlan1|203.237.10.100|255.255.255.0|230.237.10.254|

# cmd
1. router
    > * show ip interface brief : get router interface
    > * interface fa/se : interface cmd mod
    > * show ip route : get route setting
    > * ip route [endpoint ip] [endpoint gateway] [output interface or ...]
1. interface
    > * ip address [ip] [gateway] : add ip/gateway
    > * clock rate 64000 : router se2se clock rate setting
    > * no shutdown : interface on
1. vlan
    > * interface vlan #(num) : No.# vlan interface cmd mod
    > * vlan interface setting is only vlan 1 fa to "no shut"
