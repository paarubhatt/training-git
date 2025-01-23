#!/bin/bash

echo " enter set of numbers"
read -a numbers

sum=0

for num in "${numbers[@]}"; do
    sum=$((sum + num))
done

echo " sum of numbers : $sum "
