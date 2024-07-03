#!/bin/bash

function count_lines {
	local count
	count=$(wc -l "$1" | awk '{print $1}')
	echo "$count"
}

number_of_lines=$(count_lines "$1")
echo "The number of lines is $number_of_lines"
