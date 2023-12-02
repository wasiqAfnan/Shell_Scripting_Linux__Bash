#!/bin/bash

read -p "Enter the number of rows (odd): " rows

if [ $((rows % 2)) -eq 0 ]; then
    echo "Please enter an odd number of rows."
    exit 1
fi

spaces=$((rows / 2))
stars=1

for ((i = 1; i <= rows; i++)); do
    for ((j = 1; j <= spaces; j++)); do
        echo -n " "
    done

    for ((j = 1; j <= stars; j++)); do
        echo -n "*"
    done

    echo ""

    if [ $i -lt $((rows / 2 + 1)) ]; then
        spaces=$((spaces - 1))
        stars=$((stars + 2))
    else
        spaces=$((spaces + 1))
        stars=$((stars - 2))
    fi
done

#Original pascal diamond

#!/bin/bash

read -p "Enter the number of rows for Pascal's Diamond: " n

# Function to calculate the factorial of a number
factorial() {
    if [ $1 -eq 0 ] || [ $1 -eq 1 ]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
    fi
}

# Function to calculate binomial coefficient
binomial_coefficient() {
    local row=$1
    local col=$2
    echo $(( $(factorial $row) / ( $(factorial $col) * $(factorial $((row - col))) ) ))
}

# Print Pascal's Diamond
for ((i = 0; i < n; i++)); do
    for ((j = 0; j < n - i - 1; j++)); do
        echo -n " "
    done

    for ((j = 0; j <= i; j++)); do
        coefficient=$(binomial_coefficient $i $j)
        echo -n "$coefficient "
    done

    echo
done

for ((i = n - 2; i >= 0; i--)); do
    for ((j = 0; j < n - i - 1; j++)); do
        echo -n " "
    done

    for ((j = 0; j <= i; j++)); do
        coefficient=$(binomial_coefficient $i $j)
        echo -n "$coefficient "
    done

    echo
done
