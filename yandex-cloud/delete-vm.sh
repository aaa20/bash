#!/bin/bash

NAMEVM=vm-cli

# Остановка VM
echo "Stop VM " $NAMEVM
yc compute instance stop $NAMEVM 

# Удаление VM
echo "Delete VM " $NAMEVM 
yc compute instance delete $NAMEVM

