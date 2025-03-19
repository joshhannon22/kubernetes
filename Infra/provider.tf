terraform {
  backend "azurerm" {
    resource_group_name   = "aks-resources"
    storage_account_name  = "joshaksbackend"
    container_name        = "tf-container"
    key                   = "terraform.tfstate"  # This is the name of the state file
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}