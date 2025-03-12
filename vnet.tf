
# Creating Virtual Network (VNet)
resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/16"]
  tags = {
    Environment = "Production"
    Project     = "AskmeAI"
  }
  depends_on = [azurerm_resource_group.main]
}
