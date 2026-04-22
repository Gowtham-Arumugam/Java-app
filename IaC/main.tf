resource "azurerm_resource_group" "3tier-rg" {
    name     = "3tier-rg"
    location = "East US"
    tags = {
        environment = "production"
        team        = "Null pointer works"
    }
}