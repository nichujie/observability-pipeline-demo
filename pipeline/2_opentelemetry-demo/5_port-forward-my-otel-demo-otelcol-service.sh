#!/bin/bash

NAMESPACE="otel-demo"
DEMO="my-otel-demo"

echo
echo "In order for spans from the browser to be properly collected,"
echo "port 4318 needs to be exposed."

kubectl port-forward svc/${DEMO}-otelcol 4318 -n $NAMESPACE
