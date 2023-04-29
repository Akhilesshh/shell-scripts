#!/bin/bash
size=`df -h . | tail -1 | awk -F " " '{print$(NF-1)}' | sed 's/%//g'`
echo -e "Hi\n Disk size reached 90% please take appropriate action" > body_mail
if [ $size -gt 90 ]; then
	cat body_mail | mail -s "disk size is 90%" -b "abc@gmail.com" xyz@gmail.com
fi
