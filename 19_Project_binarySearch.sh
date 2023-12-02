#!/bin/bash

arr=( 10 20 30 40 50 52 67 89 254 )
echo "${arr[*]}"

read -p "Enter a number: " num

low=0
high=${#arr[*]}
flag=0

while [ $low -lt $high ]; do
    let mid=($low+$high)/2
    
    if [ $num -eq ${arr[mid]} ]; then
        flag=1
        break
    elif [ $num -gt ${arr[mid]} ]; then
        let low=$mid+1
    else
        high=$mid
    fi
done

if [ $flag -eq 1 ]; then
    echo "Number is present in the array"
else
    echo "Number is not present in the array"
fi

