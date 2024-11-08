#!/bin/bash

greet() {
    echo "Hello, $1!"
}

# Call the function with an argument
greet "World"      # Output: Hello, World!


add_numbers() {
    sum=$(( $1 + $2 ))
    echo "Sum of $1 and $2 is: $sum"
}

# Call the function with two arguments
add_numbers 3 5     # Output: Sum of 3 and 5 is: 8


get_length() {
    echo "${#1}"    # Output the length of the string argument
}

# Capture the return value of the function
length=$(get_length "Hello")
echo "Length: $length"    # Output: Length: 5


calculate_area() {
    local length=$1
    local width=$2
    area=$(( length * width ))   # This will only exist within the function
    echo "Area: $area"
}

calculate_area 5 4   # Output: Area: 20

# Full Shell Script with Multiple Functions
add() {
    echo "$(( $1 + $2 ))"
}

subtract() {
    echo "$(( $1 - $2 ))"
}

multiply() {
    echo "$(( $1 * $2 ))"
}

divide() {
    if [ "$2" -ne 0 ]; then
        echo "$(( $1 / $2 ))"
    else
        echo "Division by zero is not allowed"
    fi
}

# Main script
echo "Addition: $(add 10 5)"          # Output: 15
echo "Subtraction: $(subtract 10 5)"  # Output: 5
echo "Multiplication: $(multiply 10 5)" # Output: 50
echo "Division: $(divide 10 5)"        # Output: 2


