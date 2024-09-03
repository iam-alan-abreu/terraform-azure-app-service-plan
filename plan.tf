resource "azurerm_service_plan" "default_plan" {
  name                = "asp-${local.suffix_name}"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  os_type             = var.os_type
  sku_name            = var.sku_name
  worker_count        = var.worker_count

  tags = merge({ "Name" = "asp-${local.suffix_name}" }, var.tags, local.tags)
}
