variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
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