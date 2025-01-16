resource "azurerm_container_app" "main" {
  count = 3

  name                          = "${var.container_app_name}-${count.index + 1}"
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
        value = "8000"
      }
    }
  }

  ingress {
    external_enabled = true
    target_port      = 8000
    traffic_weight {
      percentage      = 100
      label           = "default"
      latest_revision = true
    }
  }
}