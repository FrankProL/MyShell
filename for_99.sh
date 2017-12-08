#!/bin/bash
for((i=1;i<=9;i++))
do
	for((j=1;j<=i;j++))
	do
		echo -ne "$j*$i=$((j*i))\t"  # -n不换行 -e支持转义
	done
	echo " "
done
