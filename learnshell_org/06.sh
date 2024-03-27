#!/bin/bash
#basic String Operations

#String Length
STRING="this is a string"
echo ${#STRING} # 16

#Index
STRING="this is a string"
SUBSTRING="hat"
expr index "$STRING" "$SUBSTRING"


#Substring Extractiob
STRING="this is a string"
POS=1
LEN=3
echo ${STRING:$POS:$LEN}
