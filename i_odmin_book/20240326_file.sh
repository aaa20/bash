#!/bin/bash

# Переименование файла

#check input data before start proccess
if [ $# -ne 2 ]
then
 echo "2 args needs, the file you want to rename and the new name of file"
 exit 1
fi

# check if file $1 exists and really is file, not folder
if [ ! -f "$1" ]
then
 echo "File $1 does not exist or it's not a file, maybe a folder, please try again"
 exit 1
fi

# the proccess of renaming and check that everything finished success
if cp "$1" "$2" && rm -f "$1"
then
 echo "Name of file $1 was changed to $2"
 exit 0
else
 echo "Something went wrong!"
 exit 1
fi
