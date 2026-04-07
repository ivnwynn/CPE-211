#!/bin/bash


GATEWAY = $(ip route | awk '/default/{print $3}')

while true; do
	if ping -c "GATEWAY" &> /dev/null;
then 
	echo "$(date): Gateway $GATEWAY is reacheable"
else 
	echo "$(date): Gateway $GATEWAY is unreachable"
	fi
	sleep 5
done


