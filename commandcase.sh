#!/bin/bash
case $1 in
	'list')echo "this is list of all files and dir"
		ls -lrt
		;;
	`expr 2 + 4`)echo "present working dir"
		pwd
esac
