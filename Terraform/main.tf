# Call the caf-enterprise-scale module directly from the Terraform Registry
# pinning to the latest version

module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "3.1.2"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm.connectivity
    azurerm.management   = azurerm.management
    azurerm.identity     = azurerm.identity
  }

  root_parent_id   = data.azurerm_client_config.core.tenant_id
  root_id          = var.root_id
  root_name        = var.root_name
  default_location = "westeurope"

  // Set subscription IDs for placement of platform subs
  subscription_id_management   = data.azurerm_client_config.management.subscription_id
  subscription_id_connectivity = data.azurerm_client_config.connectivity.subscription_id
  subscription_id_identity     = data.azurerm_client_config.identity.subscription_id
  library_path                 = "${path.root}/lib"

  // Deploy Demo Landing Zone Archetypes
  deploy_demo_landing_zones = true

  // Custom Landing Zones Archetypes
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

  # // Deploy Connectivity Resources
  # deploy_connectivity_resources    = var.deploy_connectivity_resources
  # configure_connectivity_resources = local.configure_connectivity_resources

  # // Deploy Identity Resources
  # deploy_identity_resources    = var.deploy_identity_resources
  # configure_identity_resources = local.configure_identity_resources

  # // Deploy Management Resources
  # deploy_management_resources    = var.deploy_management_resources
  # configure_management_resources = local.configure_management_resources
}
