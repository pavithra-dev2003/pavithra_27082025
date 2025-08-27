terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   subscription_id = "5e4fafbb-ef69-4e17-8835-68030d81f758"
  features {}
}
