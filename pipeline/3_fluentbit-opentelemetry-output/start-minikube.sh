#!/bin/bash

minikube config set driver docker

# Get the number of CPUs
cpu_count=$(grep -c ^processor /proc/cpuinfo)

# Get the amount of RAM in GB
ram_gb=$(free -g | awk '/^Mem:/{print $2}')

echo
echo "# You have total $cpu_count CPUs and $ram_gb GB RAM on your machine."

declare -i CPUS MEMORY

CPUS=$((cpu_count))/2
MEMORY=$((ram_gb))/2

echo "# Starting minikube with '--cpus $CPUS --memory ${MEMORY}g'"
echo
minikube start --cpus $CPUS --memory ${MEMORY}g
