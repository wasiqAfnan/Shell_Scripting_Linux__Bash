#!/bin/bash

#array is collection of items 
#In shell scripting array element is seperated by spaces and we can store any data type in a single array

# Declaring an array
arr=( 1 2 hello "wasiqafnan" )
#printing individual elemnt
echo "${arr[0]}"
echo "${arr[3]}"
#printing all elements
echo "${arr[*]}"

#some array special cases

#Getting length of an array
echo "${#arr[*]}"

#Slicing an array
echo "${arr[*]:2:1}"
#in this after colon first parameter is from which index you want to start slicing and the second parameter is how many elements.
#it means that we want to slice from 2nd index and only one element

#Adding elements in array
arr+=( saba chudail )
echo "${arr[*]}"

<<comment
Array Key-Value pairs:-
In shell scripting there is a special type of array in this array we can access it's element by the key
comment

#declairing key-value pair array
declare -A myArray
myArray=( [name]="wasiq afnan" [age]=mundi)
#printing using key
echo "${myArray[age]}"
#printing all values
echo "${myArray[*]}"

