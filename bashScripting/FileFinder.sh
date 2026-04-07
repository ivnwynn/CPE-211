#!bin/bash/

echo "Check a file"
read -p ">>" FILENAME

if [ -e $FILENAME ]; then
	echo "file exist"
else 
	read -p "File Name: " NewFile	
	touch $NewFile
fi
	 
