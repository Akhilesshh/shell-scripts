#!/bin/bash
echo "enter filename to find its location"
read file
find /home/ec2-user -iname "$file" > loc_log
if [ $? -eq 0 ]; then
	echo "$file is found in below locations"
	cat loc_log; rm loc_log
else
	echo "$file is not found"
fi

