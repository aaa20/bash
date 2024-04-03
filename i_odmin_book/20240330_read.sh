#!/bin/bash

# Чтение файла построчно

read -p "Please enter name of reading file: " reading_file
num=1

while read line; do
  echo "Line $num: $line"
  num=$(( $num + 1 ))
done < $reading_file


