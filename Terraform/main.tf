# Call the caf-enterprise-scale module directly from the Terraform Registry
# pinning to the latest version

module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "3.1.2"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name
  library_path   = "${path.root}/lib"

  # Deploy Demo Landing Zone Archetypes
  deploy_demo_landing_zones = true

  # Custom Landing Zones Archetypes
  custom_landing_zones = {
    "${var.root_id}-online-example-1" = {
      display_name               = "${upper(var.root_id)} Online Example 1"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {}
        access_control = {}
      }
    }
    "${var.root_id}-online-example-2" = {
      display_name               = "${upper(var.root_id)} Online Example 2"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "customer_online"
        parameters = {
          Deny-Resource-Locations = {
            listOfAllowedLocations = ["westeurope", ]
          }
          Deny-RSG-Locations = {
            listOfAllowedLocations = ["westeurope", ]
          }
        }
        access_control = {}
      }
    }
  }

  # Deploy Connectivity Resources - 
  # deploy_connectivity_resources = true
  # subscription_id_connectivity  = data.azurerm_subscription.connectivity.subscription_id

  # Deploy Identity Resources
  deploy_identity_resources = true
  subscription_id_identity  = data.azurerm_subscription.identity.subscription_id
}