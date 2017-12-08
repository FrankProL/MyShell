#!/bin/bash
for ip in `seq 1 5`
do
	{
	ping -c 1 172.168.0.$ip >>a 2>&1
	if [ $? -eq 0 ]
	then
		echo 192.168.1.$ip UP 
	else
		echo 192.168.1.$ip DOWN
	fi
	}
done
