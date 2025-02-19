#!/bin/bash

# Function to run a command and wait for user input
run_command() {
    echo "Running: $1"
    eval $1
    echo
    read -p "Press Enter to continue..."
}

# List of commands to run
commands=(
    "kubectl apply -f dos-workflow.yaml -n bank-of-anthos"
    "kubectl delete -f dos-workflow.yaml -n bank-of-anthos"
)

# Run each command
for command in "${commands[@]}"
do
    run_command "$command"
done

echo "All commands executed."

