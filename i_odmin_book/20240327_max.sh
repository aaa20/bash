#!/bin/bash

# Поиск максимального числа

read -p "Please, enter number 1: " num1
read -p "Please, enter number 2: " num2
read -p "Please, enter number 3: " num3

# check if all enetered lines really numbers

if ! [[ $num1 =~ ^[0-9]+$ ]] || ! [[ $num2 =~ ^[0-9]+$ ]] || ! [[ $num3 =~ ^[0-9]+$ ]]
then
  echo "Error! num1, num2 and/or num3 not a number!"
  exit 1
else
 # -gt = >
 if [ "$num1" -gt "$num2" ]
 then
  if [ "$num1" -gt "$num3" ]
  then
   echo "$num1 is maximal number"
  elif [ "$num3" -gt "$num2" ]
  then
   echo "$num3 is maximal number"
  fi
 elif [ "$num2" -gt "$num3" ]
 then
  echo "$num2 is maximal number"
 elif [ "$num3" -gt "$num1" ]
 then
  echo "$num3 is maximal number"
 else
  echo "all of entered numbers are equal: $num1"
 fi
fi
