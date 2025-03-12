
# Network Security Group for Backend
resource "azurerm_network_security_group" "main" {
  name                = var.security_group
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  # Inbound rules
  security_rule {
    name                       = "FrontendTraffic"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*" 
    source_address_prefix      = "*" #"10.0.2.0/24"  # Only allow from frontend subnet
    destination_address_prefix = "*"
  }

  # Inbound rule: Deny all other inbound traffic
  security_rule {
    name                       = "DenyAllInbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  # Outbound rule: Allow traffic only to the VNet
  security_rule {
    name                       = "AllowOutboundVNet"
    priority                   = 100
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "VirtualNetwork" #allows the backend to communicate with other services within the same Virtual Network 
  }

  # Outbound rule: Deny all internet access
  security_rule {
    name                       = "DenyAllOutboundInternet"
    priority                   = 200
    direction                  = "Outbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "0.0.0.0/0"  # This blocks all outbound internet access, ensuring the backend remains isolated.
  }
  
  security_rule {
  name                       = "AllowOutboundToAzureServices"
  priority                   = 150
  direction                  = "Outbound"
  access                     = "Allow"
  protocol                   = "*"
  source_port_range          = "*"
  destination_port_range     = "*"
  source_address_prefix      = "*"
  destination_address_prefix = "AzureCloud"  # Azure service tag to allow Azure services like ACR
}
}