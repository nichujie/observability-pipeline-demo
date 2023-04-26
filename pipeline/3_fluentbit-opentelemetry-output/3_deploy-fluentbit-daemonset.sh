#!/bin/bash

echo
echo "# Deploy fluentbit daemonset..."

kubectl apply -f fluentbit-opentelemetry-config/fluentbit-daemonset.yaml
