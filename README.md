# GCP Auto-Scaling Deployment

This repository contains Bash scripts to set up an auto-scaling VM instance group on Google Cloud Platform.

## 📌 Prerequisites
- Google Cloud SDK installed (`gcloud` CLI)
- A Google Cloud project with billing enabled
- IAM permissions to create resources

## 🚀 Deployment Steps

### 1️⃣ Clone this repository  
```bash
git clone https://github.com/your-repo/gcp-auto-scaling-deployment.git
cd gcp-auto-scaling-deployment/scripts
```

### 2️⃣ Run the scripts  
```bash
bash create-instance.sh    # Creates the VM instance template & group
bash setup-firewall.sh     # Configures firewall rules
bash configure-auto-scaling.sh  # Sets up auto-scaling
```

### 3️⃣ Verify Deployment
```bash
gcloud compute instances list
gcloud compute firewall-rules list
gcloud compute instance-groups managed describe auto-scaling-group
```

### 4️⃣ Cleanup (if needed)
```bash
gcloud compute instance-groups managed delete auto-scaling-group --zone=us-central1-a
gcloud compute firewall-rules delete allow-http
```

## 🎯 Features
✅ Auto-Scaling (Scale up/down based on CPU)  
✅ Firewall Rule for HTTP Traffic  
✅ Startup Script to Install Apache  

📌 **Note:** Modify variables in scripts as per your project settings.
