#!/bin/bash

prefix=$1
directory=$2

cd $directory

for file in *; do
	mv $file ${prefix}${file}
done

echo "Added $prefix to all files in $directory"
