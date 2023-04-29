#!/bin/bash
echo "Below is the calculator options"
echo -e "1)Addition\n2)Subtraction\n3)Multiplication\n4)Division\n*)invalid\n"
echo "select any option from the given menu"
read option
case $option in
	1)echo "enter numbers to add"
		read add
		sum=0
		for i in $add; do
			sum=`expr $sum + $i`
		done
		echo "sum of $add is $sum"
		;;
	2)echo "enter two numbers to subtract"
		echo "enter 1st number"
		read num1
		echo "enter 2nd num"
		read num2
		if [ $num1 -gt $num2 ]; then
			sub=`expr $num1 - $num2`
		else
			sub=`expr $num2 - $num1`
		fi
		echo "diff of $num1 and $num2 is $sub"
		;;
	3)echo "enter numbers to multiply"
		read num
		mul=1
		for i in $num;do
			mul=`expr $mul \*  $i`
		done
		echo "product of $num is $mul"
		;;
	4)echo "enter two numbers to divide"
		echo "enter 1st number"
		read num1
		echo "enter 2nd number"
		read num2
		division=`expr $num1 / $num2` 
		echo "division of $num1 by $num2 is $division"
esac

