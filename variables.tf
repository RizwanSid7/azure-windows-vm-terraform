variable "location" {
  default = "Central India"
}

variable "resource_group_name" {
  default = "rg-terraform-vm"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}
