output "asp_id" {
  value       = azurerm_service_plan.default_plan.id
  description = "The ID of the Service Plan."
}

output "asp_name" {
  value       = azurerm_service_plan.default_plan.name
  description = "The name of the Service Plan."
}

output "asp_kind" {
  value       = azurerm_service_plan.default_plan.kind
  description = "The kind of the Service Plan."
}

output "asp_reserved" {
  value       = azurerm_service_plan.default_plan.reserved
  description = "Whether this is a reserved Service Plan Type."
}

output "asp_location" {
  value       = azurerm_service_plan.default_plan.location
  description = "The Azure Region where the Service Plan exists."
}

output "asp_os_type" {
  value       = azurerm_service_plan.default_plan.os_type
  description = "The O/S type for the App Services hosted in this plan."
}

output "asp_resource_group" {
  value       = azurerm_service_plan.default_plan.resource_group_name
  description = "The name of the Resource Group where the Service Plan exists."
}

output "asp_sku_name" {
  value       = azurerm_service_plan.default_plan.sku_name
  description = "The SKU for the plan."
}

output "asp_tags" {
  value       = azurerm_service_plan.default_plan.tags
  description = "A mapping of tags assigned to the AppService."
}