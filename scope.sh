#!/bin/bash

# Global variable
global_var="I am a global variable"

# Function to show the global variable
show_global() {
    echo "Inside show_global function: $global_var"
}

# Function with a local variable
use_local_variable() {
    local local_var="I am a local variable"
    echo "Inside use_local_variable function: $local_var"
    
    # Accessing global variable inside the function
    echo "Accessing global_var inside use_local_variable: $global_var"
}

# Function that changes a global variable
modify_global_variable() {
    global_var="I am a modified global variable"
    echo "Inside modify_global_variable function: $global_var"
}

# Main script
echo "In main script: $global_var"      # Output: Global variable value
show_global                             # Accessing global variable in function

echo

use_local_variable                      # Local variable inside function

# Trying to access local variable outside function
echo "In main script: $local_var"       # This will be empty or an error

echo

modify_global_variable                  # Modify global variable
echo "After modification in main script: $global_var"
