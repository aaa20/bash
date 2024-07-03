#!/bin/bash

function show_current_date {
	echo "$1"
	date "$1"

}

show_current_date "+%Y-%m-%d"
