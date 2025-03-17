# Define the Resource Group Name and Location as variables
variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "askmeai"
}

variable "location" {
    description = "Azure region for resources"
    type = string
    default = "Germany West Central"
}

variable "container_registry_name" {
    description = "Name of Azure Container Registry"
    type = string
    default = "askmeai_ACR"
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type = string
  default = "askmei-vnet"
}

variable "public_subnet" {
  description = "Name of the Public Subnet"
  type = string
  default = "public_subnet"
  
}

variable "security_group" {
  description = "Security group name"
  type = string
  default = "askmeai_sg"
}

variable "vm_name" {
  description = "Name of the VM"
  type = string
  default = "trainvm"
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "application_id" {
   type = string
}

variable "client_secret" {
  type = string
}

variable "secret_id" {
  type = string
}

variable "ssh_public_key" {
  type = string
}
