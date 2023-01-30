data "azurerm_client_config" "core" {}

data "azurerm_subscription" "connectivity" {
  subscription_id = "d3c84026-e4b6-43a0-9761-00aebdd4f0ed" #ALZ-Connectivity–MPN
}


data "azurerm_subscription" "identity" {
  subscription_id = "f7ceb774-15e9-46ec-a0ca-b73607c07572" #ALZ-Identity-MPN
}

data "azurerm_subscription" "management" {
  subscription_id = "bee53a59-8c39-4831-b113-d66083fd6237" #ALZ-Management–MPN
}