#!/bin/bash

MY_LOG_INDEX="fluent-bit"

curl -s -XGET "https://localhost:9200/${MY_LOG_INDEX}/_search" -ku 'admin:admin' -H 'Content-Type: application/json' -d '{ "query": { "match_all": { } } }' | jq
