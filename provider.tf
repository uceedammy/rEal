provider "azurerm" {
  features {}
}

provider "kubernetes" {
  host                   = azurerm_kubernetes_cluster.ubuna.kube_admin_config.host
  token                  = data.azurerm_kubernetes_cluster.ubuna.kube_admin_config.token
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.ubuna.kube_admin_config.cluster_ca_certificate)
}