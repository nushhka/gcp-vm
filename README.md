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

## 📜 Explanation of Scripts
### `create-instance.sh` - VM Instance & Instance Group Creation
This script:
- Creates an instance template (`auto-scaling-template`).
- Configures a VM with **Ubuntu 20.04 LTS**.
- Allows **HTTP/HTTPS traffic**.
- Uses **metadata startup script** to install Apache.
- Creates a **Managed Instance Group (MIG)**.

### `setup-firewall.sh` - Configures Firewall Rules
This script:
- Creates a **firewall rule** (`allow-http`).
- Allows **TCP:80 (HTTP)** for incoming traffic.
- Uses **target tags** to ensure only specific instances are affected.

### `configure-auto-scaling.sh` - Auto-Scaling Configuration
This script:
- Enables **auto-scaling** on the **Managed Instance Group**.
- Sets **CPU-based scaling policy** (scale up at **60% CPU usage**).
- Defines **min/max instances** (`1-5`).
- Configures a **cool-down period of 60 seconds** to prevent unnecessary scaling.


## 🎯 Features
✅ Auto-Scaling (Scale up/down based on CPU)  
✅ Firewall Rule for HTTP Traffic    

📌 **Note:** Modify variables in scripts as per your project settings.
