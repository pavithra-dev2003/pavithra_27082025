resource "azurerm_public_ip" "pip1" {
  name                = var.pip_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  allocation_method   = "Static"
}
