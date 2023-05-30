resource "azurerm_virtual_network" "webserver-net" {
  name                = "webserver-net"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.webserver.location
  resource_group_name = azurerm_resource_group.webserver.name
}

resource "azurerm_subnet" "webserver-subnet" {
  name                 = "subnet01"
  resource_group_name  = azurerm_resource_group.webserver.name
  virtual_network_name = azurerm_virtual_network.webserver-net.name
  address_prefixes       = ["10.0.1.0/24"]

  private_link_service_network_policies_enabled = false
}
