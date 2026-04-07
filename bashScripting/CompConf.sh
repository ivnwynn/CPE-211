#! /bin/bash

COMPUTER_NAME=$(hostname)
PYHSICAL_ADDR=$(ip link show | awk '/ether/{print}' | head -n 1)
IPV4_ADDR=$(hostname -I | awk '{print $1}')
SUBNET_MASK=$(ifconfig | grep -w "inet" | grep -v "127.0.0.1" | awk '{print $4}' | head -n 1)
DEFAULT_GW=$(ip route | grep default | awk '{print $3}')
DNS_IP=$(grep "nameserver" /etc/resolv.conf | awk '{print $2}' | head -n 1)

echo "$COMPUTER_NAME"
echo "$PHYSICAL_ADDR"
echo "$IPV4_ADDR"
echo "$SUBNET_MASK"
echo "$DEFAULT_GW"
echo "$DNS_IP"
