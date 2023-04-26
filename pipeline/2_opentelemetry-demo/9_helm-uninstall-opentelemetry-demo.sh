#!/bin/bash

NAMESPACE="otel-demo"
DEMO="my-otel-demo"

helm uninstall $DEMO -n $NAMESPACE
