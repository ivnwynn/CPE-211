#!/bin/bash

read -p "Do you want to update your system? (y/n): " UPDATE
if [ "$UPDATE" = "y" ]; then
	sudo apt update && sudo apt upgrade -y
	echo "The update is complete"
else
	echo  "See you later!"
fi
