#!/bin/bash
# Author : Nicholas LaMonica
# Date: 01/31/19
# Script follows here:
echo "Enter a number: "
read numOne
echo "Enter a second number: "
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is : $sum"
let prod=numOne*numTwo
echo "The product is: $prod"

#inserted code for step 5
echo "File name: $0"
echo "Command line Arguement 1: $1"
grep $1 $2
