#!/bin/bash

#Decalring a function
function foo {
    echo "It's a function"
}

#Alternate syntax
foo2() {
    echo "It's a function without function keyword"
}

#Calling a function
foo
foo2

#Decalring add function
add() {
    #num1 and num2 are local variables
    #$1 is first arguement
    #$2 is second arguement
    local num1=$1
    local num2=$2
    let sum=$num1+$num2

    echo "$num1 + $num2 = $sum"
}
#passing arguement to a function
add 16 18