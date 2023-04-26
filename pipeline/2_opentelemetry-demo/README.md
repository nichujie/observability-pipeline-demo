# OpenTelemetry Demo in the Pipeline

The scripts will use additional values in my-values.yaml for deploying the OpenTelemetry Demo with additonal support for the Kafka integration.

For the official demo, use the scripts in the ./default-opentelemetry-demo directory.

## Pre-requsites

Kafka and Kafka UI need to be deployed. Use the scripts in ../kafka.

## Deployment

1. Use script 1 and 2 to deploy OpenTelemetry Demo
2. Use script 3 to port-forward frontend service
4. Go to ../kafka/kafka-ui directory and run port-forwarding script for kafka-ui service
5. Open the Kafka-ui endpoint in your browser. Click on 'my-cluster-kafka' -> 'Topics' and verify you have 'otlp_metrics' and 'otlp_spans' under 'Topic Name'.
