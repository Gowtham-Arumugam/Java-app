resource "azurerm_resource_group" "three-tier-app-rg" {
    name     = "ThreeTierAppRG"
    location = "East US"
    tags = {
        environment = "production"
        team        = "Null pointer works"
    }
}