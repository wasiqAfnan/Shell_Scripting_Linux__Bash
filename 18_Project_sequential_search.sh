#!/bin/bash

arr=( 1 28 31 40 5 6 7 8 9 10 )
read -p "Enter the number" key
flag=flase

for ((i=0; i<=${#arr[*]}; i++)); do
    if [ "${arr[i]}" -eq "$key" ]; then
        flag=true
        break
    fi
done

if [ "$flag" = true ]; then
    echo "$key is present in the list"
else
    echo "$key is not present in the list"
fi
