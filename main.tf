resource "azurerm_resource_group" "example"{
    name = "tfADOrg"
    location = "south india"
 }
 resource "azurerm_network_security_group" "example" {
  name                = "tfADOnsg01"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_virtual_network" "example" {
  name                = "tfaADOvnet01"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
   
 }   