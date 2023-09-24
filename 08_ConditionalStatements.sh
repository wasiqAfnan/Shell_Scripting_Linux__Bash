#!/bin/bash
<<comment
------XXX------XXX------XXX------XXX-------|
|   Meaning           |           Symbol   |
|---------------------|--------------------|
|Equalto              |     -eq/==         |
|Greater than equal to|     -ge            |
|less than equal to   |     -le            |
|Greater than         |     -ne/!=         |
|less than            |     -gt            |
|Not Equal to         |     -lt            |
------XXX------XXX------XXX------XXX-------|
comment

#If-Else statement
age=18
if [ $age -ge 18 ]
then
    echo "You are eligible to drive"
else
    echo "You are not eligible to drive"
fi

#Switch-Case statement
read -p "Enter your rating from 1 to 5: " rating

case $rating in
    1) echo "You rate us 1 star"
        ;;
    2) echo "You rate us 2 star"
        ;;
    3) echo "You rate us 3 star"
        ;;
    4) echo "You rate us 4 star"
        ;;
    5) echo "You rate us 5 star"
        ;;
    *) echo "Enter between 1 to 5"
esac
