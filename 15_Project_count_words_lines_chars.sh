#!/bin/bash

#reading filename entered by the user
filename=$1

#checking if user has provided the filename or not
if [ $# -eq 0 ]; then
    echo "Kindly provide a filename to continue"
    exit 1
fi

echo "given file name: $filename"

#checking file exist or not
if [ ! -f "$filename" ]; then
    echo "No file exist with the filename: $filename"
    exit 1
fi

content=$(cat "$filename")
echo "Content of the file:"
echo "______________________"
echo "$content"
echo "------------------------"

words=$(wc -w < "$filename")
lines=$(wc -l < "$filename")
characters=$(wc -m < "$filename")

echo "Number of words: $words"
echo "Number of lines: $lines"
echo "Number of characters: $characters"
