#!/bin/bash

echo
echo "# Create fluentbit RBAC roles..."
./1_create-fluentbit-account.sh
echo
echo "# Deploy fluentbit configmap..."
./2_deploy-fluentbit-configmap.sh
echo
echo "# Deploy fluentbit daemonset..."
./3_deploy-fluentbit-daemonset.sh
