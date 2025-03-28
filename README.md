# 🚀 Terraform AWS VPC Setup

This Terraform script sets up an AWS VPC with public and private subnets, an internet gateway, and a NAT gateway.

## 🌍 Resources Created
- **🛜 VPC** (`10.0.0.0/16`)
- **🌐 Public Subnet** (`10.0.1.0/24`, auto-assigns public IPs)
- **🔒 Private Subnet** (`10.0.2.0/24`)
- **🌍 Internet Gateway** (For public internet access)
- **🔁 NAT Gateway** (Allows private subnet to access the internet securely)
- **🛣️ Route Tables** (Public and private routing configured)

## 📌 Outputs
- 🆔 `vpc_id`: ID of the created VPC
- 🌐 `public_subnet_id`: ID of the public subnet
- 🔒 `private_subnet_id`: ID of the private subnet
- 🌍 `internet_gateway_id`: ID of the internet gateway
- 🔁 `nat_gateway_id`: ID of the NAT gateway

## 🛠️ Usage
1. Initialize Terraform:
   ```sh
   terraform init
   ```
2. Plan the deployment:
   ```sh
   terraform plan
   ```
3. Apply the changes:
   ```sh
   terraform apply -auto-approve
   ```
4. Destroy resources when done:
   ```sh
   terraform destroy -auto-approve
   ```

## ⚡ Prerequisites
- 🏗️ Terraform installed (`>=1.0`)
- 🏆 AWS CLI configured with credentials
- 🏢 An active AWS account

## 📌 Notes
- ✏️ Modify the region and CIDR blocks as needed.
- ✅ Ensure the public subnet is in an available AZ for your region.
- 📡 The NAT Gateway requires an Elastic IP allocation.

Enjoy automating your AWS infrastructure with Terraform! 🚀
