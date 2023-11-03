#!/bin/bash

echo "This program will check if the number is prime or not"

#reading value from user
read -p "Enter the number: "  number

#setting flag value
flag=0

#divide the number from 2 and upto the number
for ((i = 2; i < number; i++)); do
    if ((number % i == 0)); then
        #changing flag value to 1 as the number is prime
        flag=1
        break
    fi
done

#checking flag value
if ((flag == 1)); then
    echo "$number is a prime number"
else
    echo "$number is not a prime number"
fi
