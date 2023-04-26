#!/bin/bash

echo
echo "# Creating"
echo "  - ServiceAccount: fluent-bit"
echo "  - ClusterRole: fluent-bit-read"
echo "  - ClusterRoleBinding: ServiceAccount=fluent-bit, ClusterRole=fluent-bit-read"
echo
kubectl apply -f fluentbit-opentelemetry-config/account.yaml

