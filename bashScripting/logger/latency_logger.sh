#!/bin/bash

echo "test ping?"
read -p ">> " PING 
if [ $PING == "y" ]; then
	ping -D 8.8.8.8
	~/Documents/bashScripting/logger/network_logs/dns_latency.txt
 							
else 
	echo "okay"
fi


