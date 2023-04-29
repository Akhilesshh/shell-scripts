#!/bin/bash
sed '1d' $1 > temp1
while read line; do
	age=` echo "$line" | awk -F " " '{print $3}'`
	if [ $age -ge 25 ] && [ $age -le 40 ] ; then
		echo "$line" | awk -F " " '{print $1}'
	fi
done < temp
