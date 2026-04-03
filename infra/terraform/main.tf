resource "azurerm_resource_group" "Learn_devops" {
  name     = "LearnDevOps"
  location = "East US"
}
resource "azurerm_container_registry" "Learn_devops" {
  name                = "todain"
  resource_group_name = azurerm_resource_group.Learn_devops.name
  location            = azurerm_resource_group.Learn_devops.location
  sku                 = "Basic"
  admin_enabled       = false
}
