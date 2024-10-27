#!/bin/bash

# Данный вариант отличается от предыдущих тем, что для его реализации 
# не используются никакие внешние утилиты, а лишь встроенная команда eval. 
# Скрипт, использующий eval для формирования шаблона, 
# будет выглядеть следующим образом:


IP="192.168.0.10"
NETMASK="255.255.255.0"
GATEWAY="192.168.0.1"

TEMPLATE=$(< template.txt)

eval "echo -e \"$TEMPLATE\""
