#!/bin/bash

INTERFACE="enp0s3"
IP_ADDR="10.0.2.50/24"
GATEWAY="10.0.2.2"

echo "---- BEFORE ----"
ip addr show $INTERFACE | grep inet

echo "Setting temporary static IP..."

sudo ip addr flush dev $INTERFACE
sudo ip addr add $IP_ADDR dev $INTERFACE
sudo ip link set $INTERFACE up
sudo ip route add default via $GATEWAY

echo "---- AFTER ----"
ip addr show $INTERFACE | grep inet
