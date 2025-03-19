output "cluster_identity_id" {
  value = azurerm_kubernetes_cluster.cluster.identity[0].principal_id
}