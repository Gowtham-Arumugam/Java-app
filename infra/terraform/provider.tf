terraform {
  required_version = "=1.12.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.40.0"
    }
  }
}
provider "azurerm" {
  client_id       = var.client_id
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_secret   = var.client_secret

  features {}
}
resource "azurerm_kubernetes_cluster" "example" {
  name                = "example-aks1"
  location            = azurerm_resource_group.Learn_devops.location
  resource_group_name = azurerm_resource_group.Learn_devops.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "DEV"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = true
}
