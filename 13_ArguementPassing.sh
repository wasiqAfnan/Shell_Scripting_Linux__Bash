#!/bin/bash

echo "No of args are: $#"
echo "args are: $@"

#printing args one by one
for arg in $@
do
    echo "Arguements is: $arg"
done
