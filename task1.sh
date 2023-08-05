#!/bin/bash
if [ "$#" -gt  2 ] || [ "$#" -lt  2 ]
then 
 echo "to use this script : arg1 = file_to_copy arg2 = directory to be coppied into "
 exit 1
fi
if [ -d $2 ] && [ -f $1 ]
then 
 
 cp "$1" "$2" 
 cd "$2" 
 chmod  740 $1

else 
 if [ ! -f $1 ]
  then 
  echo "file doesn't exist "
 else 
  echo "directory doesn't exist " 
  exit 1 
 fi    
fi 
