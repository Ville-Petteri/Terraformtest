# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 0.12"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "rg" {
      name     = "villepetteriterraform"
      location = "westus2"

      tags = {
       Environment = "Terraform Getting Started"
       Team = "DevOps"
      }
}
# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
    name                = "villepetteriTFVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "westus2"
    resource_group_name = azurerm_resource_group.rg.name
}