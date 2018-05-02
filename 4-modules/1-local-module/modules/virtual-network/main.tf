resource "azurerm_virtual_network" "main" {
  name                = "${var.virtual_network_name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  address_space       = ["${var.virtual_network_address_space}"]
  tags                = "${var.tags}"
}

resource "azurerm_subnet" "frontend" {
  name                 = "frontend"
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "${var.frontend_subnet_prefix}"
}

resource "azurerm_subnet" "backend" {
  name                 = "backend"
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "${var.backend_subnet_prefix}"
}

resource "azurerm_subnet" "database" {
  name                 = "database"
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = "${azurerm_virtual_network.main.name}"
  address_prefix       = "${var.database_subnet_prefix}"
}
