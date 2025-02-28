#!/bin/bash

# Set variables
PROJECT_ID="your-project-id"
ZONE="asia-south1-c"
INSTANCE_TEMPLATE="auto-scaling-template"
MACHINE_TYPE="e2"

# Create an instance template
gcloud compute instance-templates create $INSTANCE_TEMPLATE \
    --machine-type=$MACHINE_TYPE \
    --image-family=ubuntu \
    --image-project=ubuntu 20.04 \
    --boot-disk-size=10GB \
    --metadata=startup-script='#!/bin/bash
    --tags=http-server

# Create a Managed Instance Group
gcloud compute instance-groups managed create auto-scaling-group \
    --base-instance-name=instance \
    --size=1 \
    --template=$INSTANCE_TEMPLATE \
    --zone=$ZONE

echo "VM Instance Group Created!"
