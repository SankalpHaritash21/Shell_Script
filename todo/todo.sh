#!/bin/bash

# File to store tasks
file="todo.txt"

# Ensure the file exists
touch "$file"

# Display Menu
displayMenu(){
    echo "Todo List Manager"
    echo "=================="
    echo "1. Add a task"
    echo "2. List tasks"
    echo "3. Remove task"
    echo "4. Exit"
    echo
}

# Display all tasks
viewTask(){
    echo "Your To-Do List"
    echo "=================="

    if [[ -s $file ]]; then
        nl -w2 -s". " "$file"
    else
        echo "No tasks pending"
    fi
    echo
}

# Add a task
addTask(){
    read -p "Enter task: " task
    echo "$task" >> "$file"
    echo "Task added"
    echo
}

# Remove a task
removeTask(){
    viewTask
    read -p "Enter task number to remove: " taskNum
    if [[ $taskNum =~ ^[0-9]+$ ]]; then
        if sed -i.bak "${taskNum}d" "$file"; then
            echo "Task removed!"
        else
            echo "Error removing task!"
        fi
    else
        echo "Invalid task number!"
    fi
    echo
}

# Main loop
while true; do
    displayMenu
    read -p "Choose an option [1-4]: " option
    echo

    case $option in
        1) addTask ;;
        2) viewTask ;;
        3) removeTask ;;
        4) echo "Goodbye!"; exit ;;
        *) echo "Invalid option. Please choose a valid option." ;;
    esac
done
