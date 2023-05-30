terraform {
   required_version = ">= 0.12"
   required_providers {
      azurerm = ">3.0"
   }
}

provider "azurerm" {
   subscription_id = var.subscription_id
   #client_id = var.client_id
   #client_secret = var.client_secret
   tenant_id = var.tenant_id
   skip_provider_registration = true
   features {}
}
