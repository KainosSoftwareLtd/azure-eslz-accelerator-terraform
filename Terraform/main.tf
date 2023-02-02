# Call the caf-enterprise-scale module directly from the Terraform Registry
# pinning to the selected version. Here "3.1.2"

module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "3.1.2"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm.connectivity
    azurerm.management   = azurerm.management
    azurerm.identity     = azurerm.identity
  }

  # root_parent_id  - root for all Landing Zone deployments, Usually the Tenant ID
  # root_id - a custom Name (ID) value for the Enterprise-scale "root" Management Group, and append this to the ID for all core Enterprise-scale Management Groups.
  # root_name - a custom DisplayName value for the Enterprise-scale "root" Management Group.
  root_parent_id   = data.azurerm_client_config.core.tenant_id
  root_id          = var.root_id
  root_name        = var.root_name

  // Default location for resources where specific location was not provided
  default_location = "westeurope"

  // Set subscription IDs for placement of platform subs
  subscription_id_management   = data.azurerm_client_config.management.subscription_id
  subscription_id_connectivity = data.azurerm_client_config.connectivity.subscription_id
  subscription_id_identity     = data.azurerm_client_config.identity.subscription_id

  // Archetype definitions library location
  library_path = "${path.root}/lib"

  // Deploy Demo Landing Zone Archetypes
  deploy_demo_landing_zones = true

  // Deploy Custom Landing Zones configured in locals.tf
  custom_landing_zones = local.custom_landing_zones

  // Deploy Connectivity Resources with custom settings configured in locals.tf
  deploy_connectivity_resources    = var.deploy_connectivity_resources
  configure_connectivity_resources = local.configure_connectivity_resources

  // Deploy Identity Resources with custom settings configured in locals.tf
  deploy_identity_resources    = var.deploy_identity_resources
  configure_identity_resources = local.configure_identity_resources

  // Deploy Management Resources with custom settings configured in locals.tf
  deploy_management_resources    = var.deploy_management_resources
  configure_management_resources = local.configure_management_resources
}
