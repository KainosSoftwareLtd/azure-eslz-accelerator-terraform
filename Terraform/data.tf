data "azurerm_client_config" "core" {
  provider = azurerm
}

data "azurerm_subscription" "connectivity" {
  provider = azurerm.connectivity

}

data "azurerm_subscription" "identity" {
  provider = azurerm.identity
}

data "azurerm_subscription" "management" {
  provider = azurerm.management

}