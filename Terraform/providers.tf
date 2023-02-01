provider "azurerm" {
  features {}
  subscription_id = "648b9e67-6f78-4ae2-b729-c2466fd0a8e2" //ALZ-Corp-MPN
}

provider "azurerm" {
  features {}
  alias           = "connectivity"
  subscription_id = "b1cdc9c0-de05-4c7b-b29c-6dcf7e815a8b" //ALZ-Connectivity–MPN
}

provider "azurerm" {
  features {}
  alias           = "management"
  subscription_id = "bee53a59-8c39-4831-b113-d66083fd6237" //ALZ-Management–MPN
}

provider "azurerm" {
  features {}
  alias           = "identity"
  subscription_id = "f7ceb774-15e9-46ec-a0ca-b73607c07572" //ALZ-Identity-MPN
}