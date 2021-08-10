variable "required_ddos_protection_plan" {
  description = "Set to true if DDOS Protection Plan is required"
  type        = bool
  default     = false
}

variable "ddos_protection_plan_name" {
  description = "DDOS Protection Plan name"
  type        = string
  default     = ""
}

variable "location" {
  description = "Virtual Network resources Location"
  type        = string
}

variable "resource_group_name" {
  description = "Virtual Network resource group name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "address_space" {
  description = "Virtual Network address space"
}

variable "dns_servers" {
  description = "Virtual Network associated DNS Servers"
  default     = null
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Virtual Network"
  default     = {}
}
