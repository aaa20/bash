#!/bin/bash

# Функция возведения в степень чисел
# https://t.me/i_odmin_book/3113

sqrt() {
  echo $1^2 | bc -l
}

for ((i=1; i<=20; i++)); do
  echo "$i^2 = " $(sqrt $i)
done


