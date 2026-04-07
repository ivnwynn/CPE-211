#!/bin/bash

echo "Welcome, use traceroute?"
read -p ">> " TRACE
if [ $TRACE == "y" ]; then
 	traceroute -m 5 google.com | grep -ic "gateway"  
	echo "that's the successful hops"
else 
	echo "okay"
fi

