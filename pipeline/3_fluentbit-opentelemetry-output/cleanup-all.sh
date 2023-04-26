#!/bin/bash

NAMESPACE="otel-demo"
CONFIG="config-logapp-logs.yaml"

cd fluentbit-opentelemetry-config 

echo
echo "# Deleting fluentbit daemonset..."
kubectl delete -f fluentbit-daemonset.yaml
echo
echo "# Deleting fluentbit configmap..."
kubectl delete -f $CONFIG
echo
echo "# Deleting fluentbit account..."
kubectl delete -f account.yaml
echo
echo "# Deleting logapp pod..."
kubectl delete pod/logapp
