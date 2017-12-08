#!/bin/bash

if [ -e /etc/passwd ]
then
	more /etc/passwd
else
	touch /home/frank/myshell_test/xxx.xx
fi
