provider "azurerm" {
  version = "=1.4.0"
}

variable "prefix" {
  default = "example"
}

resource "azurerm_resource_group" "network" {
  name     = "${var.prefix}-module-resources"
  location = "West Europe"
}

module "network" {
  source               = "./modules/virtual-network"
  virtual_network_name = "${var.prefix}-network"
  resource_group_name  = "${azurerm_resource_group.network.name}"
  location             = "${azurerm_resource_group.network.location}"
}

output "backend_subnet_id" {
  value = "${module.network.backend_subnet_id}"
}

output "database_subnet_id" {
  value = "${module.network.database_subnet_id}"
}

output "frontend_subnet_id" {
  value = "${module.network.frontend_subnet_id}"
}
