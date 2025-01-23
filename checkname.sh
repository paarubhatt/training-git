#!/bin/bash

echo "Enter the file name or directory or link"

read name
# to check file name
if [ -f $name ]; then  
   echo "$name is a file"
   echo "----------$name file content----------"
   cat "$name"
   echo "____________end_____________________"
   echo ""
   line_count=$(wc -l  "$name")
   echo "$name file contains $line_count lines"
# to check directory
elif [ -d $name ]; then
     echo "$name is a directory"
     echo " files present in the directory $name :"
     ls -l "$name"

 elif [ -L $name ]; then
      echo "$name is a link"

 else
     echo "$name does not exist"

 fi             

 