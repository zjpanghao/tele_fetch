#!/bin/bash
lastmin=`date  --date "7 minute ago" +%Y%m%d%H%M`
files=`ls`
sum=0
for file in $files
do
  if [ ${file:0:3} = "log" ]
  then
    echo $file
   
    count=`cat $file/tele_run_shanghai_index.INFO |grep -e".*ky_.* success $lastmin"|wc -l`
   sum=`expr $sum + $count`
  fi
done 

echo "sum is :"$sum "time $lastmin"
