#!/bin/bash

helm search repo fluent -o json | jq
