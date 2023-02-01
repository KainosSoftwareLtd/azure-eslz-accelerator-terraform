terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.8.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.3.0"
    }
  }
}