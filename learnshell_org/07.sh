#!/bin/bash

# Decision Making


# if
NAME="John"
if [ "$NAME" = "John" ]; then
  echo "True - my name is indeed John"
fi

echo "========================================"


# if else
NAME="Bill"
if [ "$NAME" = "John" ]; then
  echo "True - my name is indeed John"
else
  echo "False"
  echo "You must mistaken me for $NAME"
fi

echo "========================================"

# if elif else
NAME="George"
if [ "$NAME" = "John" ]; then
  echo "John Lennon"
elif [ "$NAME" = "George" ]; then
  echo "George Harrison"
else
  echo "This leaves us with paul and Ringo"
fi

echo "========================================"

# case
mycase=1
case $mycase in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected python";;
    4) echo "You selected C++";;
    5) exit
esac
