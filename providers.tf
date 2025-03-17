terraform {
  required_providers {
    azurerm={
      source = "hashicorp/azurerm"
      version = "~>4.12"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = var.application_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}
