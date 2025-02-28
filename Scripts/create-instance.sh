#!/bin/bash

# Set variables
PROJECT_ID="your-project-id"
ZONE="us-central1-a"
INSTANCE_TEMPLATE="auto-scaling-template"
MACHINE_TYPE="e2-medium"

# Create an instance template
gcloud compute instance-templates create $INSTANCE_TEMPLATE \
    --machine-type=$MACHINE_TYPE \
    --image-family=debian-11 \
    --image-project=debian-cloud \
    --boot-disk-size=20GB \
    --metadata=startup-script='#!/bin/bash
    sudo apt update -y && sudo apt install -y apache2 && sudo systemctl start apache2' \
    --tags=http-server

# Create a Managed Instance Group
gcloud compute instance-groups managed create auto-scaling-group \
    --base-instance-name=instance \
    --size=1 \
    --template=$INSTANCE_TEMPLATE \
    --zone=$ZONE

echo "VM Instance Group Created!"
