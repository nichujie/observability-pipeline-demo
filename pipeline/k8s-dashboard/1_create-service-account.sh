#!/bin/bash

kubectl apply -f dashboard-service-account.yaml

kubectl apply -f dashboard-role-binding.yaml
