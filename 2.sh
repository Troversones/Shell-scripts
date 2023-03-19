#!/bin/bash

# Get the number to check from the first command-line argument
number=$1

# Calculate the triangular number that is greater than or equal to the input number
triangular=1
while [ $triangular -lt $number ]; do
    ((triangular++))
    ((number-=triangular))
done

# Check if the input number is a triangular number
if [ $number -eq 0 ]; then
    echo "no"
else
    echo "yes"
fi
