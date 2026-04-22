terraform {
    required_version = "= 1.14.9"
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "= 3.117.1"
        }
    }
}

provider "azurerm" {
    features {}
    client_id       = var.CLIENT_ID
    client_secret   = var.SECRET
    tenant_id       = var.TENANT_ID
    subscription_id = var.Subscription_ID
}