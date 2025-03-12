# Loading resource group
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}


# Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "main" {
  name                = "${var.resource_group_name}-analytics"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}


