#!/bin/bash

echo "Enter a number:"
read num

# Check for negative number
if [ $num -lt 0 ]
then
    echo "Factorial is undefined for negative numbers"
    exit
fi

fact=1

for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done

echo "Factorial of $num is $fact"
 
