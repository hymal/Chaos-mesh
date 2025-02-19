#!/bin/bash

# Function to execute a command and wait for user input before proceeding
run_command() {
    echo "Executing: $1"
    eval $1
    read -p "Press [Enter] key to continue..."
}

# Get pods in the namespace bank-of-anthos
run_command "kubectl get po -n bank-of-anthos"

# Apply the pod-kill.yaml file
run_command "kubectl apply -f pod-kill.yaml -n bank-of-anthos"

# Add replicaset

# Get pods in the namespace bank-of-anthos again
run_command "kubectl get po -n bank-of-anthos"

# Delete the pod-kill.yaml file
run_command "kubectl delete -f pod-kill.yaml -n bank-of-anthos"

echo "Script completed."

