#!/bin/bash

echo "Enter a number "
read num
if [ $num -ge 0 ]; then
    factorial=1

    for (( i=1; i<=num; i++ ))
    do
        factorial=$((factorial * i))
    done

    echo "The factorial of $num is $factorial."
else

  echo "Factorial can be only caluclated for non negative numbers"
fi    



# # Function to calculate factorial recursively
# factorial() {
#     # Base case: factorial of 0 is 1
#     if [ $1 -eq 0 ]; then
#         echo 1
#     else
#         # Recursive case: n! = n * factorial(n-1)
#         prev_factorial=$(factorial $(( $1 - 1 )))
#         echo $(( $1 * prev_factorial ))
#     fi
# }

# # Prompt the user to enter a number
# echo "Enter a number to find its factorial: "
# read num

# # Calculate factorial by calling the function
# result=$(factorial $num)

# # Display the result
# echo "The factorial of $num is $result."