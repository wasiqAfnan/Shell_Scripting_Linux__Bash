#!/bin/bash

#Storing path of the file
FILE="/f/Shell_Scripting_Linux__Bash/Text Files/Lowertext.txt"

#Redaing content of the file
content=$(cat "$FILE")
#converting lowercase to uppercase
content=${content^^}.
#Writing in the file
echo "$content" > "$FILE"