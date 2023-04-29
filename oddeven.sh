#!/bin/bash

echo -n "enter a number"
read t
if [ `expr $t % 2` == 0 ];
then
	echo "$t is even"
else
	echo "$t is odd"
fi

