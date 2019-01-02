#!/bin/bash

## 按日期for循环

source $MAYA_ROOT/common/all.sh



LATER=$DD
JDD=`date -d"$LATER -2 days" +"%Y%m%d"`

array_days=(0 1 2 3 5 7 10 15 30)

for num in ${array_days[@]}
do
    BASE=`date -d "$num days ago $LATER" +"%Y%m%d"`
    BASEH=`date -d"$BASE" +"%Y-%m-%d"`
    BASE_1=`date -d "$BASE +1 days" +"%Y%m%d"`
    BASEH_1=`date -d"$BASE +1 days" +"%Y-%m-%d"`


    echo "-------------- BASE: $BASE, LATER: $LATER  start--------------------"
    echo "-------------- BASEH: $BASEH, LATER: $LATER  start--------------------"
    echo "-------------- BASE_1: $BASE_1, LATER: $LATER  start--------------------"
    echo "-------------- BASEH_1: $BASEH_1, LATER: $LATER  start--------------------"

    TARGETPATH="/DB/outcome/shafa_roi_read_liucun_days/$BASE";
    HdfsRm ${TARGETPATH};
    echo ${TARGETPATH}
    hive --hiveconf spark.app.name="`basename $0 .sh`_$BASE" -e "
    --sql
    "

    TickCross

    ExportDataUpdate basicstat shafa_roi_read_liucun_days data_time,channel_code ${TARGETPATH}
done
