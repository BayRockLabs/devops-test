variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "acr_login_server" {
  description = "The login server of the Azure Container Registry"
  type        = string
}

variable "acr_username" {
  description = "The username for the Azure Container Registry"
  type        = string
}

variable "acr_password" {
  description = "The password for the Azure Container Registry"
  type        = string
}

variable "postgres_server_name" {
  description = "The name of the PostgreSQL server"
  type        = string
}

variable "postgres_db_name" {
  description = "The name of the PostgreSQL database"
  type        = string
}

variable "container_app_environment_name" {
  description = "The name of the Container App Environment"
  type        = string
}

variable "container_app_name" {
  description = "The base name of the Container App"
  type        = string
}

variable "image_name" {
  description = "The name of the image in the Azure Container Registry"
  type        = string
}