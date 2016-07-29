#!/bin/bash
export LD_LIBRARY_PATH=$TELELIBS
if [ -z $TELELIBS ]
then
 echo "alert not set $TELELIBS"
fi
echo $TELELIBS
i=0
while [ True ]
do
 if [ ! -f "ishanghai"$i".sh" ]
 then
  exit
 fi
 screen ./"ishanghai"$i".sh"
 let i++
done
