#!/bin/bash
echo "String Operation"

echo "Menu"

echo "1) To find length of a string"
echo "2) Copying string"
echo "3) Concatenation of strings"
echo "4) Comparison of two strings"
echo "5) Reversing a string"
echo "0) Exit"

echo "Enter Choice"
read ch
while [ ch!=0 ]
do

case $ch in
	1)echo "Enter String"
	  	read str
		echo "Length of the $str is ${#str}";;
	2)echo "Enter String1"
	  	read str1
	  	str2=$str1
		echo "Copy of $str1 is $str2";;
	3)echo "Enter String1"
	  	read str1
	  	echo "Enter String2"
	  	read str2
	  	str3=$str1$str2
		echo "After concat of $str1 and $str2 is $str3";;
	4)echo "Enter String1"
	  	read str1
	  	echo "Enter String2"
	  	read str2
	  	if [ $str1 \< $str2 ]
	  	then 
	  	echo "$str2 is greater than $str1"
	    else
	  	echo "$str1 is greater than $str2"
	    fi
	  	;;
	5)echo "Enter String"
	  	read str
	  	echo "Reverse of $str is " 
	  	echo $str | rev
	  ;;
	*)exit
esac
echo "Enter Choice"
read ch
done
