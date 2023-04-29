#!/bin/bash
echo "this is to create soft link"
echo "enter filename to create softlink"
read filename
if [ ! -f $filename ]; then
	echo "$filename does not exist"
	exit 1
fi
echo "enter the link name"
read link
if [ -h $link ]; then
	echo "$link already exists"
exit 1
fi
ln -s $filename $link

