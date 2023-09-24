#!/bin/bash

#in this project we are going to take 2 numbers form user and print the result of Addition, Subtraction, Multiplication, Division and Modulo of those numbers

#taking user input

read -p "Enter first number: " num1
read -p "Enter second number: " num2

#calculating + - * / and % of these numbers
let sum=$num1+$num2
let diff=$num1-$num2
let prod=$num1*$num2
let div=$num1/$num2
let mod=$num1%$num2

echo "$num1 + $num2 = $sum"

echo "$num1 - $num2 = $diff"

echo "$num1 * $num2 = $prod"

echo "$num1 / $num2 = $div"
echo "$num1 % $num2 = $mod"