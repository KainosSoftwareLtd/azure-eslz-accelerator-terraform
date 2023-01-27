#Create Resource Group
resource "azurerm_resource_group" "alz-RG" {
  name     = "alztf-rg"
  location = "west Europe"
}