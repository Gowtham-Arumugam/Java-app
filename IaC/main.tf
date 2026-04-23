resource "azurerm_resource_group" "three-tier-app-rg" {
    name     = "ThreeTierApp-RG"
    location = "East US"
    tags = {
        environment = "production"
        team        = "Null pointer works"
    }
}
resource "azurerm_kubernetes_cluster" "example" {
  name                = var.AKS_CLUSTER_NAME
  location            = azurerm_resource_group.three-tier-app-rg.location
  resource_group_name = azurerm_resource_group.three-tier-app-rg.name
  dns_prefix          = "threetierappaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}