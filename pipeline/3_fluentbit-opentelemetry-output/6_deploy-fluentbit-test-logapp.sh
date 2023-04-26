#!/bin/bash

NAMESPACE="otel-demo"

echo
echo "# Deleting any existing logapp pods..."
echo "  (It is OK to see an Error message if not logapp is running)"
kubectl delete pod logapp -n $NAMESPACE
echo
echo "# Deploy fluentbit test logging app"
echo "  (this will generate 5 log entries)"
echo
kubectl apply -f fluentbit-opentelemetry-config/logapp.yaml
