resource "azurerm_container_app" "main" {
  name                          = var.container_app_name
  resource_group_name           = var.resource_group_name
  container_app_environment_id  = var.container_app_environment_id
  revision_mode                 = "Single"

  template {
    container {
      name   = "frontend"
      image  = "mcr.microsoft.com/azuredocs/aci-helloworld"  # Placeholder image
      cpu    = 0.5
      memory = "1.0Gi"
      env {
        name  = "PORT"
        value = "80"
      }
    }
  }

  ingress {
    external_enabled = true
    target_port      = 80
    traffic_weight {
      percentage      = 100
      label           = "default"
      latest_revision = true
    }
  }
}