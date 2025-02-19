#!/bin/bash

echo "Press Enter to apply the pod-kill-delayed-start.yaml file in the bank-of-anthos namespace (first time)..."
read -p ""
kubectl apply -f pod-kill-delayed-start.yaml -n bank-of-anthos

echo "Press Enter to apply the pod-kill-delayed-start.yaml file in the bank-of-anthos namespace (second time)..."
read -p ""
kubectl apply -f pod-kill-delayed-start.yaml -n bank-of-anthos

echo "Operations completed."

