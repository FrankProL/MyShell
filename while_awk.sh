#!/bin/bash

while read input
do
	echo "`echo $input | awk -F: '{print $1}'`"  #飘号包裹，脚本中执行命令
done < /etc/passwd
