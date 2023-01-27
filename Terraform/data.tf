data "azurerm_client_config" "core" {}

data "azurerm_subscription" "connectivity" {
  subscription_id = "d3c84026-e4b6-43a0-9761-00aebdd4f0ed" #ALZ-Connectivity–MPN
}

