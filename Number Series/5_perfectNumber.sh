#!/bin/bash

echo "This program checks if a number is a perfect number."

# Ask the user to enter a number
read -p "Enter a number: " number

# Initialize variables
sum_of_divisors=0

# Loop to find the divisors and calculate their sum
for ((i = 1; i < number; i++)); do
    if ((number % i == 0)); then
        sum_of_divisors=$((sum_of_divisors + i))
    fi
done

# Check if it's a perfect number
if ((sum_of_divisors == number)); then
    echo "$number is a perfect number."
else
    echo "$number is not a perfect number."
fi
