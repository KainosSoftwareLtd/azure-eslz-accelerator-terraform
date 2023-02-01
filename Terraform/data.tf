data "azurerm_client_config" "core" {
  provider = azurerm
}

data "azurerm_subscription" "connectivity" {
  provider = azirerm.connectivity

}

data "azurerm_subscription" "identity" {
  provider = azirerm.identity
}

data "azurerm_subscription" "management" {
  provider = azirerm.management

}