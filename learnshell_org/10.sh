#!/bin/bash

# Shell Functions
# https://www.learnshell.org/en/Shell_Functions

function function_B {
  echo "Function B."
}

function function_A {
  echo "$1"
}

function adder {
  echo "$(($1 + $2))"
}


function_A "Function A."
function_B 

adder 12 56
