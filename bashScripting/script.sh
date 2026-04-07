#!/bin/bash

PHONELIST="$HOME/.phonelist.txt"
if [ $# -lt 1 ]; then
	echo "Whose phone number did you get?"
	exit 1
fi

if [ "$1" = "new" ]; then
	shift
	echo "$*">>"$PHONELIST"
	echo "$* added to database"
	exit 0
fi

if [ ! -s "PHONELIST" ]; then
	echo "No names in the phone list yet!"
	exit 1
fi

if ! grep -i -q "$*" "PHONELIST"; then
	echo "Sorry, that name was not found in the phone list"
	exit 1
else
grep -i "$*" "$PHONELIST"
fi
exit 0

