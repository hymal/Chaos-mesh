#!/bin/bash

echo "Press Enter to apply the slow-pod-kill.yaml file in the bank-of-anthos namespace..."
read -p ""
kubectl apply -f slow-pod-kill.yaml -n bank-of-anthos

echo "Press Enter to delete the slow-pod-kill.yaml file from the bank-of-anthos namespace..."
read -p ""
kubectl delete -f slow-pod-kill.yaml -n bank-of-anthos

echo "Operations completed."

