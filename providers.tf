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
   subscription_id = "d94b851c-49ab-494f-92d2-eacba270a13e"
}
