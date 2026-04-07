#!/bin/bash

echo "Enter your name"
read -p ">>" NAME
if [ "$NAME" == "ivan" ]; then
	echo "hi"
else
	echo "nuh uh"
fi
