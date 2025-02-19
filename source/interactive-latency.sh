#!/bin/bash

# Function to execute a command and wait for user input before proceeding
run_command() {
    echo "Executing: $1"
    eval $1
    read -p "Press [Enter] key to continue..."
}

# Apply the latency.yaml file
run_command "kubectl apply -f latency.yaml -n boa"

# Delete the latency.yaml file
run_command "kubectl delete -f latency.yaml -n boa"

echo "Script completed."

