resource "azurerm_container_app_environment" "main" {
  name                = var.container_app_environment_name
  resource_group_name = var.resource_group_name
  location            = var.location
}