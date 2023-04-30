#!/bin/bash

helm search repo loki -o json | jq
