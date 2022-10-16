terraform {
  backend "azurerm" {
    resource_group_name  = "tstate"
    storage_account_name = "tstate7963"
    container_name       = "tfstate"
    key                  = "av.terraform.tfstate"
  }
}
