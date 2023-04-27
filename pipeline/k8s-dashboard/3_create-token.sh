#!/bin/bash

echo
echo "Copy the following token to dashboard"
echo

kubectl -n kubernetes-dashboard create token admin-user
