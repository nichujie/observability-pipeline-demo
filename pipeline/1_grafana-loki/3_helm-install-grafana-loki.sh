#!/bin/bash

# - https://cylab.be/blog/197/deploy-loki-on-kubernetes-and-monitor-the-logs-of-your-pods

NAMESPACE="otel-demo"
DEMO="my-otel-demo"
LOKI="${DEMO}-loki"

echo "# Helm installing grafana/loki-stack..."
# Default values:
# - loki.enabled: true
# - promtail.enabled: true
# - fluent-bit.enabled: false
# - grafana.enabled: false
# - prometheus.enabled: false
# - filebeat.enabled: false
# - logstash.enabled: false
#
helm install $LOKI grafana/loki-stack --namespace $NAMESPACE --create-namespace --set promtail.enabled=false
