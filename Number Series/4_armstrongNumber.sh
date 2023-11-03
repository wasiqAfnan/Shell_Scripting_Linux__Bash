#!/bin/bash

echo "This program checks if a number is an Armstrong number."

# Ask the user to enter a number
read -p "Enter a number: " number

# Initialize variables
original_number=$number
num_of_digits=0
sum=0

# Calculate the number of digits
while [ $number -gt 0 ]; do
    num_of_digits=$((num_of_digits + 1))
    number=$((number / 10))
done

# Reinitialize number for further use
number=$original_number

# Calculate the sum of digits raised to the power of the number of digits
while [ $number -gt 0 ]; do
    digit=$((number % 10))
    sum=$((sum + digit**num_of_digits))
    number=$((number / 10))
done

# Check if it's an Armstrong number
if [ $sum -eq $original_number ]; then
    echo "$original_number is an Armstrong number."
else
    echo "$original_number is not an Armstrong number."
fi
