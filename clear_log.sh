#!/bin/bash
dirs=`ls`
for dir in $dirs
do
  if [ -d $dir ] && [ ${dir:0:3} = "log" ]
  then
	cd $dir
	files=`ls`
	for file in $files
	do
	  echo $file
         size=`ls -l $file|awk '{print $5}'`
         if [ $size -eq 0 ]
           then
           echo "rm "$file
	   rm $file
         fi
	done
	cd ..
   fi
done

for dir in $dirs
do
  if [ -d $dir ] && [ ${dir:0:3} = "log" ]
  then
	cd $dir
	files=`ls`
	for file in $files
	do
	  echo $file
	  cat /dev/null > $file
	done
	cd ..
  fi
done
for dir in $dirs
do
  if [ -d $dir ] && [ ${dir:0:3} = "log" ]
  then
	cd $dir
	files=`ls`
	for file in $files
	do
	  echo $file
         size=`ls -l $file|awk '{print $5}'`
         if [ $size -eq 0 ]
           then
           echo "rm "$file
	  # rm $file
         fi
	done
	cd ..
   fi
done

