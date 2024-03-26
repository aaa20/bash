#!/bin/bash

my_array=(apple banana "Fruit Basket" orange)
echo ${my_array[3]}

my_array[4]="carrot"
echo ${#my_array[@]}
echo ${my_array[${#my_array[@]}-1]}
