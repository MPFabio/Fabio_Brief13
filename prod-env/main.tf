module "ModuleP" {
  source = "../azure-webserver"
  instance_size = "Standard_D4s_v3"
  location = "francecentral"
  environment = "prod"
}
