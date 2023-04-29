#!/bin/bash
echo "below is the menu"
echo -e "1)searchword\n2)checkname\n3)findfile\n4)createlink\n5)editfile\n6)exit"
while true; do
echo "select any option from the above menu"
read option
case $option in
	1)/home/ec2-user/shell-scripts/searchword.sh
		;;
	2)/home/ec2-user/shell-scripts/checkname.sh
		;;
	3)/home/ec2-user/shell-scripts/findfile.sh
		;;
	4)/home/ec2-user/shell-scripts/softlink.sh
		;;
	5)/home/ec2-user/shell-scripts/editfile.sh
		;;
	6)echo "you have selected option to exit from script"
		
esac
done
