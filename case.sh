#!/bin/bash
read -p "please input your choice [y/n] :" i
case $i in
"y")
	echo "yes!"
	;;
"n")
	echo "no!"
	;;
*)
	echo "usage y or n!"
esac
