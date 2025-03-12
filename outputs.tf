output "resource_group_name" {
  description = "Name of the Resource Group"
  value = azurerm_resource_group.main.name
}

output "resource_group_id" {
  description = "Name of the Resource Group ID"
  value = azurerm_resource_group.main.id
}

output "resource_group_location" {
  description = "Name of the Resource Group Location"
  value = azurerm_resource_group.main.location
}


