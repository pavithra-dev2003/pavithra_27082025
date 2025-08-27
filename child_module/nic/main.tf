data "azurerm_subnet" "sbnet" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_name
  resource_group_name  = var.rg_name
}
resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.sbnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
