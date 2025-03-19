terraform {
  backend "azurerm" {
    resource_group_name   = var.resource_group_name
    storage_account_name  = "joshaksbackend"
    container_name        = "tf-container"
    key                   = "terraform.tfstate"  # This is the name of the state file
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}