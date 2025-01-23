#!/bin/bash
 #user input
echo "Enter the 1st number: "
read a 
echo "Enter the 2nd number: "
read b

#  addition
sum=$((a + b))
echo "Addition: $a + $b = $sum"

# Perform subtraction
if [ a -gt b ]; then
difference=$((a - b))
echo "Subtraction: $a - $b = $difference"
else
    difference=$((b - a))
    echo "Subtraction: $b - $a = $difference"
fi
# Perform multiplication
product=$((a * b))
echo "Multiplication: $a * $b = $product"

# division (check for division by zero)
if [ $b -ne 0 ]; then
    quotient=$((a / b))
    echo "Division: $a / $b = $quotient"
else
    echo " Division by zero is not allowed"
fi