#!/bin/bash

# Function that takes two arguments
greet() {
    echo "Hello, $1! Your favorite color is $2."
    echo "It will give file name $0"
    echo "Function Name is $FUNCNAME"
}

# Calling the function with arguments
greet "Alice" "blue"
greet "Bob" "green"
