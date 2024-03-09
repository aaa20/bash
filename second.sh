#!/bin/bash


function func1 {
    fun="$1"
    book="$2"
    printf "func1=%s,book=%s\n" "$fun" "$book"
}

function func2 {
   fun2="$1"
   book2="$2"
   printf "func2=%s,book2=%s\n" "$fun2" "$book2"
}

