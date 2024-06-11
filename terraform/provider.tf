
  # backend "azurerm" {
  #   resource_group_name  = "techapp"
  #   storage_account_name = "techterraform"
  #   container_name       = "techcontainer"

  #   #access_key = "${var.ARM_ACCESS_KEY}"
  #   key = "terra-state"
  # }

  terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.107.0"
    }
  }
}
provider "azurerm" {
  features {
    
  }
}