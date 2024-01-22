#!/bin/bash

# Check if a values file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <values-file>"
    exit 1
fi

VALUES_FILE=$1
NAMESPACE="cassandra"
RELEASE_NAME="cassandra-compaction-chart"
CHART_DIR="."

# Check if the values file exists
if [ ! -f "$VALUES_FILE" ]; then
    echo "Values file not found: $VALUES_FILE"
    exit 1
fi

# Deploy the Helm chart
helm upgrade --install $RELEASE_NAME $CHART_DIR \
    --namespace $NAMESPACE \
    --values $VALUES_FILE

echo "Deployment initiated using values from $VALUES_FILE"
