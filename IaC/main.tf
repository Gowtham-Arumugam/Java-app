resource "azurerm_resource_group" "main" {
    name     = "3tier-rg"
    location = "East US"
    tags = {
        environment = "production"
        team        = "Null pointer works"
    }
}