#!/bin/bash

# https://www.youtube.com/watch?v=eW4qrQJX3sI&t=17s


declare -l REPLY=''

read -p 'Enter a yes or no: '

if [ $REPLY = 'yes' ] ; then
  echo "you said yes"
else
  echo "you didn`t say yes"
fi
