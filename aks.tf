resource "azurerm_kubernetes_cluster" "ubuna" {
  name                = "ubuna-aks"
  location            = azurerm_resource_group.ubuna.location
  resource_group_name = azurerm_resource_group.ubuna.name
  dns_prefix          = "ubunaaks"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}