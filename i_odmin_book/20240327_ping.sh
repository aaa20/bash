#!/bin/bash

HOST_RES=$(host yandex.ru)
PING_RES=$(ping -c4 yandex.ru)
PING_TAIL=$(ping -c4 yandex.ru | tail -n 2)

if [[  $HOST_RES =~ 'yandex.ru has address' ]]; then
  echo "Connection with DNS: SUCCESS"
else
  echo "Something wrong with you internet connection!"
  exit 1
fi

if [[ $PING_RES =~ '0% packet loss' ]]; then
  echo "PING to yandex.ru: SUCCESS"
else
  echo "Something wrong with you internet connection!"
  exit 1
fi

echo "The result of yandex.ru PING:"
echo "$PING_TAIL"
