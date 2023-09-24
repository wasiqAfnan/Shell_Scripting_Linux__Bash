#!/bin/bash

a=5
#to increament value of a 
let a++
echo "$a"

#To + - * / subtract use this syntax
b=5
let c=$a*$b
echo "$c"

#Logical Operators
<<comment
&& --> And operator
|| --> Or operator
! --> Not operator
comment
