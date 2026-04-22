terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
}

provider "azurerm" {
    client_id     = var.CLIENT_ID
    client_secret = var.SECRET
    tenant_id     = var.TENANT_ID
    subscription_id = var.Subscription_ID
}

resource "azurerm_resource_group" "main" {
    name     = "rg-main"
    location = "East US"
}