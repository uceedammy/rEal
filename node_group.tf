resource "azurerm_kubernetes_cluster_node_pool" "ubuna" {
  name                  = "ubuna-nodepool"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.ubuna.id
  vm_size               = var.vm_size
  node_count            = var.node_count
  min_count             = 1
  max_count             = 5
}