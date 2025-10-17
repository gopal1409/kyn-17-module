output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet_address_space" {
  value = azurerm_virtual_network.vnet.id
}

output "web_subnet_name" {
  value = azurerm_subnet.web_subnet.name
}

output "web_subnet_prefix" {
  value = azurerm_subnet.web_subnet.id
}