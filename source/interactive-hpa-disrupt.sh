#!/bin/bash

echo "Press Enter to apply the hpa-workflow.yaml file in the bank-of-anthos namespace..."
read -p ""
kubectl apply -f hpa-workflow.yaml -n bank-of-anthos

echo "Press Enter to check the top pods in the bank-of-anthos namespace (first time)..."
read -p ""
kubectl top pods -n bank-of-anthos

echo "Press Enter to check the top pods in the bank-of-anthos namespace (second time)..."
read -p ""
kubectl top pods -n bank-of-anthos

echo "Press Enter to check the top pods in the bank-of-anthos namespace (third time)..."
read -p ""
kubectl top pods -n bank-of-anthos

echo "Press Enter to delete the hpa-workflow.yaml file from the bank-of-anthos namespace..."
read -p ""
kubectl delete -f hpa-workflow.yaml -n bank-of-anthos

echo "Operations completed."

