#!/bin/bash

<< comment
1+2-3+4-5+...
comment

echo "This program calculates the sum of the series 1 + 2 - 3 + 4 - 5..."
echo "Please enter the number of terms you'd like to sum: "

read num_terms
sum=1
sign=1

for ((i = 2; i <= num_terms; i++)); do
    term=$((i * sign))
    sum=$((sum + term))
    sign=$((sign * -1))
done

echo "The sum of the series is: $sum"

