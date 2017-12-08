#!/bin/bash

read -p "please input the first :" a
read -p "please input the second:" b

if [ $a -eq $b ]   #数值比较
then
	echo "="
elif [ $a -lt $b ]
then
	echo "<"
else 
	echo ">"
fi
