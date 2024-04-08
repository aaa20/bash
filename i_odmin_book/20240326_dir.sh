#!/bin/bash

# Перемещение директории

#check if dir $1 exists
if [ ! -d "$1" ]
then
  echo "$1 doesn't exit"
  exit 1
fi


#check if dir $2 exists
if [ ! -d "$2" ]
then
  echo "$2 doesn't exist"
  exit 1
fi

#remove $1 only if copying was success

if cp -r "$1" "$2" && rm -r "$1"
then
  echo "Dir $1 was moved to dir $2 successfully"
  exit 0
else
  echo "Something wents wrong"
  exit 1
fi
