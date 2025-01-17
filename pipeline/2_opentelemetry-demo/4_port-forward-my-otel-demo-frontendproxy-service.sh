#!/bin/bash

NAMESPACE="otel-demo"
DEMO="my-otel-demo"

echo
echo "# To access your Opentelemetry Demo, open in your browser:"
echo "  - Webstore: http://localhost:8080/"
echo "  - Grafana: http://localhost:8080/grafana/"
echo "  - Feature Flags UI: http://localhost:8080/feature/"
echo "  - Load Generator UI: http://localhost:8080/loadgen/"
echo "  - Jaeger UI: http://localhost:8080/jaeger/ui/"
echo
kubectl port-forward svc/${DEMO}-frontendproxy 8080 -n $NAMESPACE
