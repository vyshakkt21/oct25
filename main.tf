
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
features {}
}

# Example resource
resource "azurerm_resource_group" "rg" {
  name     = "vyResourceGroup"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vyVNet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}