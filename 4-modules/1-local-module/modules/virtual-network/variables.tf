variable "virtual_network_name" {
  description = "The name of the Virtual Network"
}

variable "resource_group_name" {
  description = "The Resource Group in which this Virtual Network should exist"
}

variable "location" {
  description = "The Azure Region in which this Virtual Network should exist"
}

variable "virtual_network_address_space" {
  default     = "10.0.0.0/16"
  description = "The CIDR Block to apply to this Virtual Network"
}

variable "backend_subnet_prefix" {
  description = "The Prefix of the Backend Subnet within the Virtual Network"
  default     = "10.0.2.0/24"
}

variable "database_subnet_prefix" {
  description = "The Prefix of the Database Subnet within the Virtual Network"
  default     = "10.0.1.0/24"
}

variable "frontend_subnet_prefix" {
  description = "The Prefix of the Frontend Subnet within the Virtual Network"
  default     = "10.0.3.0/24"
}

variable "tags" {
  type        = "map"
  description = "Any tags which should be applied to this network"
  default     = {}
}
