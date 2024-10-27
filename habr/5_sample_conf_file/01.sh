#!/bin/bash

s
# Самый простой вариант решения задачи, которым обычно пользуются 
# начинающие разработчики, — это поместить шаблон в тело скрипта 
# и использовать локальные переменные в качестве подстановочных значений.


IP="192.168.0.10"
NETMASK="255.255.255.0"
GATEWAY="192.168.0.1"

TEMPLATE="$(
cat << EOF
auto ens33
iface ens33 inet static
address $IP
netmask $NETMASK
gateway $GATEWAY
EOF
)"

echo -e "$TEMPLATE"
