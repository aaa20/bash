#!/bin/bash
if [ $# -lt 1 ] ; then
  read -p "Enter a name: " name
else
  name=$1 
fi



for n in $name
do
  echo "$n"
done
