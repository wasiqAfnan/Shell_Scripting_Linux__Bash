#!/bin/bash

#for loop

echo "For Loop"
for i in 1 2 3 4 5
do
    echo "Number is $i"
done

#Alternate syntax

echo "Alternate for Loop"
for j in rajesh suresh saba
do
    echo "Name is $j"
done

#Alternate syntax

echo "Alternate for Loop"
for k in {1..10}
do
    echo "Number is $k"
done

#While loop
echo "While Loop"
i=0
read -p "Enter range from 5 to 10 - " count

while [ $i -le $count ]
do
    echo "$i"
    (( i++ ))
done

#Until loop
echo "Until Loop"
p=10

until [ $p -eq 0 ]
do
    echo "$p"
    (( p-- ))
done