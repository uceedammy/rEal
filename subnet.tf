resource "azurerm_subnet" "ubuna" {
  name                 = "ubuna-subnet"
  resource_group_name  = azurerm_resource_group.ubuna.name
  virtual_network_name = azurerm_virtual_network.ubuna.name
  address_prefixes     = ["10.0.1.0/24"]
}