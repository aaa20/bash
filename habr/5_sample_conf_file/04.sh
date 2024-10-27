#!/bin/bash


# Данный вариант идейно похож на предыдущий, за исключением того, 
# что вместо sed мы используем awk, что немного сказывается на 
# листинге скрипта.

IP="192.168.0.10"
NETMASK="255.255.255.0"
GATEWAY="192.168.0.1"

cat template.txt |
 awk -v replace_str="$IP"      '{ gsub( /\$IP/ ,      replace_str ); print }' |
 awk -v replace_str="$NETMASK" '{ gsub( /\$NETMASK/ , replace_str ); print }' |
 awk -v replace_str="$GATEWAY" '{ gsub( /\$GATEWAY/ , replace_str ); print }'
