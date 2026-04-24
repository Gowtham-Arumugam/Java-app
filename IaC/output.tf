output "resource_group_name" {
    value = azurerm_resource_group.java-app-rg.name
    description = "The name of the resource group created for the java application."
}
output "AKS_cluster_name" {
    value = azurerm_kubernetes_cluster.java-app-aks.name
    description = "The name of the AKS cluster created for the java application."
}