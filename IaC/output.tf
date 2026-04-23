output "resource_group_name" {
    value = azurerm_resource_group.three-tier-app-rg.name
    description = "The name of the resource group created for the three-tier application."
}
output "AKS_cluster_name" {
    value = azurerm_kubernetes_cluster.aks_cluster.name
    description = "The name of the AKS cluster created for the three-tier application."
}