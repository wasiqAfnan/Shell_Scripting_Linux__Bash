#!/bin/bash

#in this project we are going to print the content of a file

#Storing path to variable
FILE="/f/Shell_Scripting_Linux__Bash/Text Files/abc.txt"
#printing word by word
echo "Reading file using for loop".
echo "_________________________"
sleep "2s"

for content in $(cat "$FILE")
do
    echo "$content"
done
echo "_________________________"

#printing as the file is
echo "Reading file without using any loop".
echo "_________________________"
sleep "2s"

file_content=$(cat "$FILE")
echo "$file_content"
echo "_________________________"

#printing using while loop

echo "Reading file using while loop".
echo "_________________________"
sleep "2s"
while read var
do
    echo "$var"
done < "$FILE"
echo "_________________________"