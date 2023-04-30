#!/bin/bash

NAMESPACE="otel-demo"

echo
echo "Press Ctrl-C to exit when all pods are up and running as follows:"
echo " NAME                  READY   STATUS    RESTARTS   AGE"
echo " my-otel-demo-loki-0   1/1     Running   0          ---"
echo
kubectl get pod -n $NAMESPACE --watch
