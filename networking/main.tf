resource "azurerm_virtual_network" "vnet" {
  name = var.vnet_name #sap-dev-vnet-gopal
  #this vnet need to be mapped with rg name and location
  location            = azurerm_resource_group.kyn-rg.location
  resource_group_name = azurerm_resource_group.kyn-rg.name
  address_space       = var.vnet_address_space
  tags                = local.project_tags
}
resource "azurerm_subnet" "web_subnet" {
  name                 = "${local.resource_name_prefix}-${var.web_subnet_name}" #sap-dev-web-subnet
  resource_group_name  = azurerm_resource_group.kyn-rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.web_subnet_prefix
}