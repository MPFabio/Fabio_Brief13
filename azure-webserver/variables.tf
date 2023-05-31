variable "subscription_id" {
   description = "Azure subscription"
   default = "393e3de3-0900-4b72-8f1b-fb3b1d6b97f1"
}

#variable "client_id" {
#   description = "Azure Client ID"
#   default = "384ba4e4-fc1a-47f4-bf42-acec6fad1e82"
#}

#variable "client_secret" {
#   description = "Azure Client Secret"
#   default = "lxk8Q~LfBuObGY4frVfc6B_e4Nqf6UMahS-BdaD-"
#}

variable "tenant_id" {
   description = "Azure Tenant ID"
   default = "7349d3b2-951f-41be-877e-d8ccd9f3e73c"
}

variable "instance_size" {
   type = string
   description = "Azure instance size"
   default = "Standard_F2"
}

variable "location" {
   type = string
   description = "Region"
   default = "France Central"
}

variable "environment" {
   type = string
   description = "Environment"
   default = "staging"
}
