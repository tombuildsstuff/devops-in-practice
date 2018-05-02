provider "azurerm" {
  version = "=1.4.0"
}

data "azurerm_resource_group" "main" {
  name = "production-resources"
}

data "azurerm_virtual_network" "main" {
  name                = "production-network"
  resource_group_name = "${azurerm_resource_group.main.name}"
}

resource "azurerm_subnet" "kubernetes" {
  name                 = "kubernetes"
  resource_group_name  = "${azurerm_resource_group.main.name}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "10.0.5.0/24"
}
