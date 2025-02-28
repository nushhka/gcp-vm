#!/bin/bash

# Set variables
FIREWALL_RULE_NAME="allow-http"
NETWORK="default"

# Create a firewall rule
gcloud compute firewall-rules create $FIREWALL_RULE_NAME \
    --network=$NETWORK \
    --allow=tcp:80 \
    --source-ranges=0.0.0.0/0 \
    --target-tags=http-server

echo "Firewall Rule Created!"
