resource "azurerm_resource_group" "resource" {
  name     = var.rg_name
  location = var.rg_location
}

