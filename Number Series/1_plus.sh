#!/bin/bash

<< comment
1+2+3+4+...+n
comment

echo "This program calculates the sum of the series 1 + 2 + 3 + ... + n."

# Ask the user to enter the value of 'n'
read -p "Enter the value of 'n': " n

# Initialize the sum to 0
sum=0

# Loop to calculate the series
for ((i = 1; i <= n; i++)); do
    sum=$((sum + i))
done

echo "The sum of the series is: $sum"

