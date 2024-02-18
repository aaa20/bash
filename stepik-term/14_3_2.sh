#!/bin/bash

x=1
until [ $x -lt 5 ]
do
  echo $x
  let x=x+1
done
