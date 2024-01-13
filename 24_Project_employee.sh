#!/bin/bash
function Read_Input {
    read -p "Enter Employee ID: " emp_id
    read -p "Enter Employee Name: " emp_name
    read -p "Enter Employee Designation: " emp_desig
    read -p "Enter Employee Salary: " emp_sal
}

FILE="/f/Shell_Scripting_Linux__Bash/Text Files/Records.txt"

function Insert {
    echo "$emp_id $emp_name $emp_desig $emp_sal" >> "$FILE"
    echoo "New Employee Record Added Succesfully"
}

function Fetch {
    #reading file line by line
    while read -r line; do
    echo "$line"
    done < "$FILE"
}

function Search {
    read -p "Enter Employee ID: " empID
    found=false

    while read -r line; do
        #this line will fetch only first word from the readed line using awk command
        id=$(echo "$line" | awk '{print $1}')

        #checking if employee id has matched with the given employee id
        if [ "$id" == "$empID" ]; then
            echo "$line"
            found=true
        fi
    done < "$FILE"

    if [ "$found" == false ]; then
        echo "No records found"
    fi
}

function userInput {
    echo "1) Add Employee Details"
    echo "2) Show Employee Details"
    echo "3) Search Employee Details"
    echo "4) Exit"
}

# main function
userInput

read -p "Enter Your Datails: " UI
case $UI in
    1)
        Read_Input
        Insert
        ;;
    2)
        Fetch
        ;;

    3) 
        Search
        ;;

    4)
        exit
        ;;
    
    *)
        echo "Wrong Input"
        exit
esac






