// Default subscription
provider "azurerm" {
  features {}
  subscription_id = "bee53a59-8c39-4831-b113-d66083fd6237" //ALZ-Management–MPN
}

// Connectivity subscription
provider "azurerm" {
  features {}
  alias           = "connectivity"
  subscription_id = "b1cdc9c0-de05-4c7b-b29c-6dcf7e815a8b" //ALZ-Connectivity–MPN
}
// Management subscription
provider "azurerm" {
  features {}
  alias           = "management"
  subscription_id = "bee53a59-8c39-4831-b113-d66083fd6237" //ALZ-Management–MPN
}

// Identity subscription
provider "azurerm" {
  features {}
  alias           = "identity"
  subscription_id = "f7ceb774-15e9-46ec-a0ca-b73607c07572" //ALZ-Identity-MPN
}