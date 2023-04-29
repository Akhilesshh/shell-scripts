#!/bin/bash
echo "enter word to search files"
read word
grep -R -l "$word"* > list_log
if [ $? -eq 0 ]; then
	echo "$word is found in below files"
	cat list_log
else
	echo "$word is not found"
fi
