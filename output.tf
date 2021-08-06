output "vnet_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.az_vnet.id
}

output "vnet_name" {
  description = "Virtual Network Name"
  value       = azurerm_virtual_network.az_vnet.name
}

output "vnet_address_space" {
  description = "Virtual Network address space"
  value       = azurerm_virtual_network.az_vnet.address_space
}