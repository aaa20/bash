#!/bin/bash

function f1 {
	echo Hello I\'m function 1
	echo Bye!
}

function f2 { echo Hello I\'m function 2; echo Bye!; }

f3 () {
	echo Hello I\'m function 3
	echo Bye!
}

f4 () { echo Hello I\'m function 4; echo Bye!; }

f4 
f3
f2
f1
