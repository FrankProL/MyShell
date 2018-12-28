#!/bin/bash

rootPath=/usr/local/work/
list="dzhd018 dzhd008 dzhd010 dzhd011 dzhd012"  

for onlinehost in $list
do

echo $onlinehost is appoint 

ssh root@$onlinehost  << eeooff

echo '..............登陆$onlinehost............'

#mkdir -p /usr/local/work/
#touch  /usr/local/work/abcdefg.txt
#sh /usr/local/work/azkaban-job/test.sh >>  $rootPath/abcdefg.txt
echo '............开始拉取代码...............'
#cd /usr/local/work/Maya
#git pull

cd /usr/local/work/dz-bd
git pull

cd /usr/local/work/Maya_V1
git pull

cd /usr/local/work/Archer_V1
git pull

echo '.............$onlinehost...拉取代码完成..OK...........'

exit
eeooff


done  

echo done!!!!!!!!!!!!!
