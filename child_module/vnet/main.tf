resource "azurerm_virtual_network" "network" {
  name                = var.virtual_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = var.virtual_address
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}
