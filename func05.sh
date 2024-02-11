#!/bin/bash

function print_arguments {
	ARG1=${1:-default_value1}
	ARG2=${2:-default_value2}
	ARG3=${3:-default_value3}

	echo "The first argument is: $ARG1"
	echo "The second argument is: $ARG2"
	echo "The third argument is: $ARG3"


}

print_arguments $@
