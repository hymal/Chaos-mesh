#!/bin/bash

# Function to execute a command and wait for user input before proceeding
run_command() {
    echo "Executing: $1"
    eval $1
    read -p "Press [Enter] key to continue..."
}

# Apply the latency.yaml file
run_command "kubectl apply -f mesh.yaml -n bank-of-anthos"

# Delete the latency.yaml file
run_command "kubectl delete -f mesh.yaml -n bank-of-anthos"

echo "Script completed."

