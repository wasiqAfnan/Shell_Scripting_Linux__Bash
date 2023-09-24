#!/bin/bash

#declaring strings
myStr="Wasiq Afnan Ansari"

#some special cases

#getting length of the string
echo "${#myStr}"
#Converting to uppercase
echo "${myStr^^}"
#Converting to lowercase
echo "${myStr,,}"
#Replacing a word (Swasiq will replace with MD.)
echo "${myStr/Wasiq /MD.}"
#slicing string (from 6 index upto 4 char)
echo "${myStr:6:4}"
