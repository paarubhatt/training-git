#!/bin/bash

#this script to find biggest of 3 given numbers

if [ $# -eq 3 ]; then
	 if [ $1 -ge $2 ] && [ $1 -ge $3 ]; then
		 echo "$1 is the biggest number"

	 elif [ $2 -ge $1 ] && [ $2 -ge $3 ]; then
		 echo "$2 is the biggest number"
	 else
		 echo "$3 is the biggest number"
	 fi	 
 else
	 echo "please enter only 3 numbers"
fi	 

