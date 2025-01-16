output "names" {
  value = [for app in azurerm_container_app.main : app.name]
}