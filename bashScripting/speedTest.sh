#!/bin/bash

speed=$(speedtest-cli --simple | grep "Download" | awk '{print $2}')

echo "Download Speed: $speed Mbps"

if (( $(echo "$speed < 10" | bc -l) )); then
	echo "Your network is weak."
else 
	echo "Your network is good."
fi

