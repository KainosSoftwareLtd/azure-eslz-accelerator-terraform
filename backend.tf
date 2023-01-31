terraform {
  backend "azurerm" {
    resource_group_name  = "alz-terraform"
    storage_account_name = "alzterraformstatesalrs01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}