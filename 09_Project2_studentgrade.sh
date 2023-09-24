#!/bin/bash
<<comment
if percentage 90+ then A+
70 to 89 then A
60 to 69 then B+
50 to 59 then B
40 to 49 then C+
25 to 39 then C
<25 then D 
comment

read -p "Enter marks of Bengali: " sub1
read -p "Enter marks of English: " sub2
read -p "Enter marks of Math: " sub3
read -p "Enter marks of Science: " sub4
read -p "Enter marks of Civics: " sub5

let total=$sub1+$sub2+$sub3+$sub4+$sub5
let percentage=$((total*100/500))

echo "Your percentage: $percentage%"


if [ $percentage -ge 90 ]
then
    echo "Grade: A+"
elif [ $percentage -ge 70 ] && [ $percentage -le 89 ]
then
    echo "Grade: A"
elif [ $percentage -ge 60 ] && [ $percentage -le 69 ]
then
    echo "Grade: B+"
elif [ $percentage -ge 50 ] && [ $percentage -le 59 ]
then
    echo "Grade: B"
elif [ $percentage -ge 40 ] && [ $percentage -le 49 ]
then
    echo "Grade: C+"
elif [ $percentage -ge 25 ] && [ $percentage -le 39 ]
then
    echo "Grade: C"
else
    echo "Grade: D"
fi
    
