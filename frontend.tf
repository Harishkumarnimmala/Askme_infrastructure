# Create Container App Environment
resource "azurerm_container_app_environment" "frontend" {
  name                = "${var.resource_group_name}-env"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  # Log Analytics integration
  log_analytics_workspace_id = azurerm_log_analytics_workspace.main.id
  # Use the Public subnet
  infrastructure_subnet_id = azurerm_subnet.frontend.id
  workload_profile {
    workload_profile_type = "D4" # General purpose
    name = "frontworkloadD4"
    maximum_count = 1
    minimum_count = 1
  }
}

