locals {
  ddos_protection_plan = var.required_ddos_protection_plan == true ? { dummy_create = true } : {}
}

resource "azurerm_network_ddos_protection_plan" "az_ddos_protect_plan" {
  count               = var.required_ddos_protection_plan == true ? 1 : 0
  name                = var.ddos_protection_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "az_vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  dynamic "ddos_protection_plan" {
    for_each = local.ddos_protection_plan
    content {
      id     = azurerm_network_ddos_protection_plan.az_ddos_protect_plan[0].id
      enable = true
    }
  }
  tags = var.tags
}