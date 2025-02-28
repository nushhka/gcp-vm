#!/bin/bash

# Set variables
ZONE="asia-south1-c"
INSTANCE_GROUP="auto-scaling-group"

# Set auto-scaling policy
gcloud compute instance-groups managed set-autoscaling $INSTANCE_GROUP \
    --max-num-replicas=5 \
    --min-num-replicas=1 \
    --target-cpu-utilization=0.6 \
    --cool-down-period=60 \
    --zone=$ZONE

echo "Auto-scaling Configured!"
