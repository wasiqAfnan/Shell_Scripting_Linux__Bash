#!/bin/bash

#Using Command to reverse a number
echo "This program reverses a number using rev command."

# Ask the user to enter a number
read -p "Enter a number: " number

# Use 'rev' command to reverse the number (works for integers and some floating-point numbers)
reversed_number=$(echo "$number" | rev)

echo "Reversed number: $reversed_number"


#method 2: using Modulo-Division Method
echo "This program reverses a number using Modulo-division method command."
# Ask the user to enter a number
read -p "Enter a number: " number

# Initialize variables
reversed_number=0
original_number=$number

# Reverse the number using division and modulus
while [ $number -gt 0 ]; do
    digit=$((number % 10))     # Get the last digit
    reversed_number=$((reversed_number * 10 + digit))
    number=$((number / 10))    # Remove the last digit
done

echo "Original number: $original_number"
echo "Reversed number: $reversed_number"

