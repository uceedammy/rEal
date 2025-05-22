variable "cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "ubuna-aks" # Example value: Name of your AKS cluster
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "ubuna-rg" # Example value: Name for the resource group
}

variable "resource_group_location" {
  description = "The location of the resource group."
  type        = string
  default     = "North Europe" # Example value: Azure region, e.g., "North Europe", "North Europe"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 3 # Example value: Number of nodes to provision (e.g., 3)
}

variable "vm_size" {
  description = "The size of the VM for the AKS nodes."
  type        = string
  default     = "Standard_DS3_v2" # Example value: VM size (e.g., "Standard_DS2_v2", "Standard_F4s")
}

variable "email" {
  description = "Email for Let's Encrypt notifications."
  type        = string
  default     = "your-email@example.com" # Example value: Your email for certificate management
}

variable "backend_resource_group" {
  description = "Resource group for the backend."
  type        = string
  default     = "ubuna-backend-rg" # Example value: Name of the resource group for backend storage
}

variable "backend_storage_account" {
  description = "Storage account for Terraform state."
  type        = string
  default     = "ubunastorageaccount" # Example value: Unique name for your Azure storage account
}

variable "backend_container" {
  description = "Container for storing the Terraform state."
  type        = string
  default     = "tfstate" # Example value: Name of the container in the storage account
}
