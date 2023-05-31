output "Ressource_group_name" {
  value = azurerm_resource_group.webserver.name
}

output "Environment" {
  value = var.environment
}

output "The_subnet_ID" {
 value = azurerm_subnet.webserver-subnet.id
}

output "The_vnet_ID" {
 value = azurerm_virtual_network.webserver-net.id
}

output "The_webserver_Private_ip" {
   value = azurerm_linux_virtual_machine.nginx.private_ip_address
}

output "The_webserver_Public_ip" {
   value = azurerm_linux_virtual_machine.nginx.public_ip_address
}

