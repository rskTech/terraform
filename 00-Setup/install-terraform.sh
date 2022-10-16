#!/bin/bash


# Install Terraform
echo "[TASK 1] Install Base Packages"
apt-get update >/dev/null 2>&1
apt-get install -y  jq wget unzip  >/dev/null 2>&1

# Download Terraform
echo "[TASK 2] Install Terraform Packages"
wget https://releases.hashicorp.com/terraform/1.2.4/terraform_1.2.4_linux_amd64.zip -P /root/ >/dev/null 2>&1
unzip /root/terraform_1.2.4_linux_amd64.zip 
mv terraform /usr/bin/
chmod +x /usr/bin/terraform
terraform --version

