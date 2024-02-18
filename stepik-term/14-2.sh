#!/bin/bash

if [ $1 == 100 ]; then
	echo "Accept"
elif [ $1 -gt 100 ]; then
	echo "Stop"
elif [ $1 -lt 100 ] && [ $1 -gt 50 ]; then
	echo "Welcome"
else
	echo "?"
fi
