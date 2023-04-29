#!/bin/bash
sum=0
for i in $*
do
	sum=`expr $i + $sum`
done
echo "sum of $* is $sum"
