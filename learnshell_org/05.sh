#!/bin/bash

#Basic Operation

A=3

#B=$((100 * $A + 5)) # 305
# https://www.shellcheck.net/wiki/SC2004

B=$((100 * A + 5)) # 305

echo "$B"
