#!/bin/bash

echo
echo "# Listing all port-forward processes..."
ps -ef | grep "kubectl port-forward" | grep svc

sleep 1

echo
frontendproxy_pid=$(ps -ef | grep port-forward | grep my-otel-demo-frontendproxy | awk '{print $2}')
echo "# Kill port-forward to frontendproxy process (PID: $frontendproxy_pid)"
kill -9 $frontendproxy_pid

echo
otelcol_pid=$(ps -ef | grep port-forward | grep otelcol | awk '{print $2}')
echo "# Kill port-forward to otelcol process (PID: $otelcol_pid)"
kill -9 $otelcol_pid
echo
ps -ef | grep "kubectl port-forward"
