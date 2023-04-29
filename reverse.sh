#!/bin/bash

lines=`cat $1 | wc -l`
while [ $lines -gt 0 ] ;do
	head -$lines $1 | tail -1 >> rev_file
	lines=`expr $lines - 1`
done
cat  rev_file; rm rev_file
