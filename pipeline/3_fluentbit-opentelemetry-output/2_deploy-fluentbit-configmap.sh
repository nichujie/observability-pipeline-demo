#!/bin/bash

NAMESPACE="otel-demo"
#CONFIG="config-logapp-logs.yaml"
CONFIG="config-recommendationservice-logs.yaml"

echo
echo "# Deploy fluentbit configmap using file:"
echo "  - $CONFIG"
echo
kubectl apply -f fluentbit-opentelemetry-config/$CONFIG

