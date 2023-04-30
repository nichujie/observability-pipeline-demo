#!/bin/bash

NAMESPACE="otel-demo"

echo
echo "Press Ctrl-C to exit when all pods are up and running!"
echo
watch kubectl get pod -n $NAMESPACE
