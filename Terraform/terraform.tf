terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
      configuration_aliases = [
        azurerm.connectivity,
        azurerm.management,
        azurerm.identity
      ]
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias           = "connectivity"
  subscription_id = "b1cdc9c0-de05-4c7b-b29c-6dcf7e815a8b" #ALZ-Connectivity–MPN
  features {}
}

provider "azurerm" {
  alias           = "management"
  subscription_id = "bee53a59-8c39-4831-b113-d66083fd6237" #ALZ-Management–MPN
  features {}
}

provider "azurerm" {
  alias           = "identity"
  subscription_id = "f7ceb774-15e9-46ec-a0ca-b73607c07572" #ALZ-Identity-MPN
  features {}
}