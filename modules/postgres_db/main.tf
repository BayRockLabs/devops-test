resource "azurerm_postgresql_server" "main" {
  name                = var.postgres_server_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = "B_Gen5_1"
  storage_mb          = 5120
  administrator_login = "psqladminun"
  administrator_login_password = "H@Sh1CoR3!"
  version             = "11"
  ssl_enforcement_enabled = true  # Add the required ssl_enforcement_enabled argument
}

resource "azurerm_postgresql_database" "main" {
  name                = var.postgres_db_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.main.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}