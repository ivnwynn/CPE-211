#!/bin/bash

read -p "what file do you want to copy? " FILE
read -p "Where " FILEPATH

cp $FILE $FILEPATH
echo "copy complete"
