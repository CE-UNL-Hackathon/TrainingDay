locals {
  prefix = "contoso"
  region = "UK South"
  tags = {
    cost_center = "contoso research"
  }
}

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
  name     = "${local.prefix}_rg"
  location = local.region
  tags = local.tags
}

resource "azurerm_resource_group" "contoso_dev_rg" {
  name = "${local.prefix}_dev_rg"
  location = local.region
  tags = local.tags
}