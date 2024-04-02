#!/bin/bash

#Создание папок с датой в названии

#https://t.me/c/1126137857/3905

num=1
until [ $num -eq 8 ]; do
  date=`date +%Y%m%d`
  time=`date +%H%M`
  mkdir ~/tmp/directory-${date}_${time}
  num=$(( $num + 1 ))
  if [ $num -eq 8 ]; then
    break 
  fi
  sleep 7m
done
