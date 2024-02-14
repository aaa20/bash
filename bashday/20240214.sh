#!/bin/bash

echo "Arg 1: $1"
echo "Arg 2: $2"
echo "Arg 3: $3"

echo "Count arg: $#"

echo "Flags bash: $-"


echo "PID bash: $$"

echo "Hello BashDays"
echo "Welcome Home"
echo "Last arg: $_"

IFS=","
read -ra words <<< "hello,bashdays,how,are,you"
for word in "${words[@]}"; do
    echo "Word: $word"
done
