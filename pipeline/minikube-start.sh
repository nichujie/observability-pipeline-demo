#!/bin/bash

STATUS=$(minikube status -f '{{.Host}}')

if [[ "$STATUS" == "Running" ]]; then
  echo "Minikube is already running!"
elif [[ "$STATUS" == "Stopped" ]]; then
  echo "Minikube is stopped! Restarting existing Minikube..."
  minikube start
else
  echo "Minikube not started! Starting Minikube..."
  
  minikube config set driver docker

  # Get the number of CPUs
  cpu_count=$(grep -c ^processor /proc/cpuinfo)

  # Get the amount of RAM in GB
  ram_gb=$(free -g | awk '/^Mem:/{print $2}')

  echo
  echo "# You have total $cpu_count CPUs and $ram_gb GB RAM on your machine."
  echo "  (Minikube will use 50% of the host CPU and RAM)"

  declare -i CPUS MEMORY

  CPUS=$((cpu_count))/2
  MEMORY=$((ram_gb))/2

  echo "# Starting minikube with '--cpus $CPUS --memory ${MEMORY}g'"
  echo
  minikube start --cpus $CPUS --memory ${MEMORY}g
fi
