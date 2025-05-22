# 🚀 Azure Windows VM Deployment Using Terraform

This Terraform project automates the deployment of an Azure Windows Virtual Machine (VM) with a secure and scalable infrastructure setup. It follows real-world best practices by splitting Terraform configuration into multiple files and using variables for better management and security.

---

## 📝 Project Overview

Provision an Azure Windows VM along with supporting networking components such as:

- Resource Group  
- Virtual Network (VNet) and Subnet  
- Network Security Group (NSG) with RDP access  
- Public IP and Network Interface Card (NIC)  
- Windows Server 2019 Datacenter VM

---

## 🛠️ Tools & Technologies

- Terraform  
- Microsoft Azure  
- Azure Resource Manager (ARM) Provider for Terraform

---

## 📂 Project Structure

azure-Windows-vm-terraform/
├── main.tf # Entry point (optional if modules are used)
├── provider.tf # Azure provider configuration
├── network.tf # VNet, subnet, NSG and association
├── vm.tf # Public IP, NIC and Windows VM resources
├── variables.tf # Input variable declarations
├── terraform.tfvars # Variable values (sensitive info here)
├── outputs.tf # Output values (e.g., public IP)
├── README.md # Project documentation


---

## ⚙️ Prerequisites

- Terraform installed ([Install guide](https://learn.hashicorp.com/tutorials/terraform/install-cli))  
- Azure CLI installed and authenticated ([Install guide](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli))  
- Azure subscription with appropriate permissions

---

## 🔧 Usage Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/RizwanSid7/azure-windows-vm-terraform.git
   cd azure-windows-vm-terraform

2. (Optional) Modify terraform.tfvars to set your admin password and other variables.

3. Initialize Terraform:
   terraform init

4. Validate the configuration:
   terraform validate

5. Preview the infrastructure changes:
   terraform plan

6. Apply the configuration and create resources:
   terraform apply

7. After deployment, note the public IP address of the VM (shown as output).

🔒 Security Best Practices
Sensitive data like the admin password is marked sensitive in variables.

Passwords should be set securely, either via terraform.tfvars or environment variables (TF_VAR_admin_password).

Avoid hardcoding sensitive information directly in .tf files.

Use remote state backend in production (not included here but highly recommended).

🔄 Cleanup
To remove all deployed resources and avoid charges:
    terraform destroy

🤝 Author
Rizwan Siddiqui
Cloud & DevOps Engineer | GitHub

📜 License
This project is for educational/demo purposes only. Use at your own discretion in production environments.
