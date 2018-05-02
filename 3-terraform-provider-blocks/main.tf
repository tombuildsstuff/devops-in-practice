terraform {
  # this requires that users are using at least v0.11.6 of Terraform Core
  required_version = "> 0.11.6"
}

provider "azurerm" {
  version         = "~> 1.4.x"
  subscription_id = "00000000-0000-0000-000000000000"
  alias           = "production"
}

provider "azurerm" {
  version         = "~> 1.4.x"
  subscription_id = "11111111-1111-1111-111111111111"
  alias           = "staging"
}

resource "azurerm_resource_group" "production" {
  name     = "production-resources"
  location = "West Europe"
  provider = "azurerm.production"
}

resource "azurerm_resource_group" "staging" {
  name     = "staging-resources"
  location = "North Europe"
  provider = "azurerm.staging"
}
