resource "azurerm_resource_group" "three-tier-app-rg" {
    name     = var.RESOURCE_GROUP_NAME
    location = "East US"
    tags = {
        environment = "production"
        team        = "Null pointer works"
    }
}
resource "azurerm_kubernetes_cluster" "three-tier-app-aks" {
  name                = var.AKS_CLUSTER_NAME
  location            = azurerm_resource_group.three-tier-app-rg.location
  resource_group_name = azurerm_resource_group.three-tier-app-rg.name
  dns_prefix          = "threetierappaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

network_profile {
  network_plugin    = "kubenet"
  load_balancer_sku = "standard"   # REQUIRED
}

  tags = {
    Environment = "Production"
  }
}