#!/bin/bash
for ((i=1;i<254;i++))
do
	arping -I eth0 192.168.0.$i -c 1
done
arp -a > /home/frank/myshell_test/mactable.txt
