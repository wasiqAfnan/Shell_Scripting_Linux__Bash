#!/bin/bash

read -p "Enter a string: " word
reversed=$(echo "$input" | rev)

if [ "$word" == "$reversed" ]; then
    echo "Same phulkobi"
else
    echo "Differ"
fi


