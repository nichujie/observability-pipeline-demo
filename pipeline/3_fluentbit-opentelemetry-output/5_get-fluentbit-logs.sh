#!/bin/bash

NAMESPACE="otel-demo"

echo
echo "# Get fluentbit logs..."
kubectl logs -l k8s-app=fluent-bit-logging -n $NAMESPACE
