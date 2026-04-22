output "resource_group_name" {
    value = azurerm_resource_group.three-tier-app-rg.name
    description = "The name of the resource group created for the three-tier application."
}