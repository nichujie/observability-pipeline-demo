#!/bin/bash

# - https://cylab.be/blog/197/deploy-loki-on-kubernetes-and-monitor-the-logs-of-your-pods

NAMESPACE="otel-demo"
DEMO="my-otel-demo"
FLUENT="${DEMO}-fluentbit"
VALUES="values.yaml"

echo "# Helm installing fluent/fluent-bit..."

helm upgrade --install $FLUENT fluent/fluent-bit --namespace $NAMESPACE --create-namespace --values $VALUES
