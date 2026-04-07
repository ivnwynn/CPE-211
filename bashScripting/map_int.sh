#!/bin/bash

echo "Run?"
read -p ">> " CONFIG
if [ $CONFIG == "y" ]; then 
	ifconfig | grep -w "inet" | awk '{print $0}'
else 
	echo "Exiting..."
fi

