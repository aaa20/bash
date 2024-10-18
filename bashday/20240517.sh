#!/bin/bash
# Утилита false

echo "Выполнение встроенной команды Bash - false"
false
echo "Код выполнения последней команды" $?
echo " "

echo "-----------"
echo " "
echo "Поиск альтернативной команды false в системе"
whereis false
echo "Вызов справки команды false"
env false --help
echo "----------"
echo "Вывов версии программы env false --version"
env false --version
echo "Код выполнения последней команды" $?
echo "----------"
echo "Вызов определение типа команды type -a false"
type -a false
