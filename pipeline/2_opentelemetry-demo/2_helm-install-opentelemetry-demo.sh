#!/bin/bash

NAMESPACE="otel-demo"
DEMO="my-otel-demo"
VALUES="values.yaml"

echo
echo "# Deploy opentelemetry-demo using:"
echo "  - NAMESPACE: $NAMESPACE"
echo "  - DEMO: $DEMO"
echo "  - VALUES: $VALUES"
echo
helm upgrade --install $DEMO open-telemetry/opentelemetry-demo -n $NAMESPACE --create-namespace --values $VALUES
