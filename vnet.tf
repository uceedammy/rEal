resource "azurerm_virtual_network" "ubuna" {
  name                = "ubuna-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.ubuna.location
  resource_group_name = azurerm_resource_group.ubuna.name
}