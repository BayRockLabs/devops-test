module "resource_group" {
  source = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

/*module "acr" {
  source = "./modules/acr"
  resource_group_name = module.resource_group.name
  location            = var.location
  acr_name            = var.acr_name
}
*/


module "container_app_environment" {
  source = "./modules/container_app_environment"
  resource_group_name = module.resource_group.name
  location            = var.location
  container_app_environment_name = var.container_app_environment_name
}


module "container_app" {
  source = "./modules/container_app"
  resource_group_name = module.resource_group.name
  container_app_environment_id = module.container_app_environment.id
  container_app_name = "app1"
}

/*module "container_app_8000" {
  source = "./modules/container_app_8000"
  resource_group_name = module.resource_group.name
  container_app_environment_id = module.container_app_environment.id
  container_app_name = "app"
}
*/

/*module "postgres_db" {
  source = "./modules/postgres_db"
  resource_group_name = module.resource_group.name
  location            = var.location
  postgres_server_name = var.postgres_server_name
  postgres_db_name     = var.postgres_db_name
}
*/