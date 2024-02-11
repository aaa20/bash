#!/bin/bash

function sum_numbers() {
	if [ $# -ne 3 ]; then
		echo "The number of arguments received is $# instead of 3"
		exit 1
	fi

	echo "The numbers received are: $1 $2 $3"
	sum=$(($1+$2+$3))
	echo "The sum of the numbers is $sum"

}

sum_numbers "$@"
