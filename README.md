# TF_azurerm_vnet_module

Deploy Azure Virtual network with a dedicated Terraform module 

## Requirements

A Resource Group

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_ddos_protection_plan.az_ddos_protect_plan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_ddos_protection_plan) | resource |
| [azurerm_virtual_network.az_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | Virtual Network address space | `any` | n/a | yes |
| <a name="input_ddos_protection_plan_name"></a> [ddos\_protection\_plan\_name](#input\_ddos\_protection\_plan\_name) | DDOS Protection Plan name | `string` | `""` | no |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | Virtual Network associated DNS Servers | `any` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Virtual Network resources Location | `string` | n/a | yes |
| <a name="input_required_ddos_protection_plan"></a> [required\_ddos\_protection\_plan](#input\_required\_ddos\_protection\_plan) | Set to true if DDOS Protection Plan is required | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Virtual Network resource group name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags which should be assigned to the Virtual Network | `map` | `{}` | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Virtual Network name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vnet_address_space"></a> [vnet\_address\_space](#output\_vnet\_address\_space) | Virtual Network address space |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | Virtual Network ID |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | Virtual Network Name |