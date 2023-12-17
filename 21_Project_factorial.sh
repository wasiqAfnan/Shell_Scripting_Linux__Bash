#!/bin/bash

read -p "Enter steps: " steps

a=0
b=1

echo "$a"
echo "$b"

for ((i=2;i<=$steps;i++)); do
    let c=$a+$b
    echo "$c"

    a=$b
    b=$c
done