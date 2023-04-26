#!/bin/bash

NAMESPACE="otel-demo"
DEMO="my-otel-demo"
LOKI="${DEMO}-loki"

helm uninstall $LOKI --namespace $NAMESPACE

sleep 3
