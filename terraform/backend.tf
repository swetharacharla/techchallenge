terraform {
  backend "azurerm" {
    resource_group_name  = "techapp"
    storage_account_name = "techterraform"
    container_name       = "techcontainer"

    #access_key = "${var.ARM_ACCESS_KEY}"
    key = "terra-state"
  }

  required_version = "~>0.11"
}

provider "azurerm" {
  features {}
}
