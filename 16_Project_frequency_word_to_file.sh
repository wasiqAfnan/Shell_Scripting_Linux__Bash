#!/bin/bash

# Check if the user provided both a filename and a word
if [ $# -ne 2 ]; then
    echo "Provide file name and word to find"
    exit 1
fi

# Assign command line arguments to variables
filename=$1
word_to_find=$2

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "No file found."
    exit 1
fi

# Use grep to find the lines containing the word, then count the occurrences
frequency=$(grep -o -w -i "$word_to_find" "$filename" | wc -l)

# Print the result
echo "The word '$word_to_find' appears $frequency times in '$filename'."

<< comment
-o: Show only the matching part of the line.
-w: Match whole words only.
-i: Perform case-insensitive matching.
So, this part of the command extracts all occurrences of the specified word in the file.

|: This is a pipe symbol. It takes the output from the command on the left and uses it as the input for the command on the right.

wc -l: This part of the command uses the wc command to count the number of lines. The -l option specifies that we want to count lines.
comment
