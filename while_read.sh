#!/bin/bash

while read input 
do 
	echo $input
	echo "----------------"
done < /etc/passwd  # < 读文件
