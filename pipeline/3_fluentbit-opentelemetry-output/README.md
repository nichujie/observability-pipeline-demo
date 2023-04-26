# How to configure Fluent Bit to collect logs for your K8s cluster and send to OpenSearch

## Overview

  +--------------------------------------------------------------------+
  |                                        +------------------------+  |
  |  Minikube                              | OpenSearch Dashboard   |  |
  |                                        |                        |  |
  |  +---------------------+               +------------------------+  |
  |  |   application pod   |                            ^              |
  |  |                     |                            |              |
  |  +---------------------+                            |              |
  |            | stdout                    +------------------------+  |
  |            | stderr                    |       OpenSearch       |  |
  |            |                           |                        |  |
  |            |                           +------------------------+  |
  |            v                                        ^              |
  |  /var/log/containers/<application>-*.log            |              |
  |            |                                        |              |
  |            |                           +------------------------+  |
  |            --------------------------> |  fluentbit daemonset   |  |
  |                                        +------------------------+  |
  +--------------------------------------------------------------------+

## Minikube

1. Start your minikube cluster (you can use start-minikube.sh)

## OpenSearch

1. Go to directory ./opensearch
2. Deploy OpenSearch using sripts 1 to 2
3. Wait until the OpenSearch pod is up and running
4. Deploy OpenSearch Dashboard using script 3 
5. Test that your OpenSearch service and dashboard are accessible using scripts 4 to 6

## Fluentbit

1. Go to directory ./fluentbit
2. Deploy Fluenbit Daemonset using deploy-all.sh
3. Check your fluentbit pod log using script 5. You should see log printout with text 'kube.var.log.containers.fluent-bit-...'
4. Deploy your the sample logging application using script 6
5. Check your sample logging application pod log using script 7. You should see 5 log entries with json format.
6. Port forward to your opensearch service using script 8.
7. In another terminal, fetch the logapp log entries using script 9.

## OpenSearch Dashboard

1. Go to directory ./opensearch
2. Port-forward to your OpenSearch Dashboard using 8_port-forward-opensearch-dashboard.sh 
3. Open http://127.0.0.1:8080 in your browser and use 'username=admin, password=admin' to login
4. Browser to http://127.0.0.1:8080/app/management/opensearch-dashboards/indexPatterns
5. Click on (+) Create Index Pattern to go to the 'Create index pattern' page
6. In the Index pattern name text area, enter fluent-bit, and click on Next step
7. In Step 2 of 2: Configure settings, select @timestamp from the Time field meny
8. Click on Create index pattern, and your fluent-bit index is created.
9. Browser to http://127.0.0.1:8080/app/discover, and you can fetch fluent-bit data by selecting the time period when logs are generated.

## Trouble-shooting

1. If you cannot start the OpenSearch pod, check that the following system parameter is set properly: vm.max_map_count=262144. You can check the value by running: cat /proc/sys/vm/max_map_count
