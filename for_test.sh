#!/bin/bash
for i in 1 2 3 4 5 
do
	#mkdir /home/frank/myshell_test/dir-$i
	echo $i
done

for j in {1..10}
do
	echo $j
done

for ((i=0;i<20;i++))
do
	echo "ok $i"
done
