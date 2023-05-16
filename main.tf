terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.34.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "contoso_rg" {
  name     = "contoso_rg"
  location = "UK South"

  tags = {
    "cost_center" = "contoso research"
  }
}
