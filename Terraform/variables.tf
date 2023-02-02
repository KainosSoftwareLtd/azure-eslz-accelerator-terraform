variable "root_parent_id" {
  type = string
  description = "The root_parent_id is used to specify where to set the root for all Landing Zone deployments. Usually the Tenant ID when deploying the core Enterprise-scale Landing Zones."
}
variable "root_id" {
  type    = string
  default = "alztf"
  description = "If specified, will set a custom Name (ID) value for the Enterprise-scale 'root' Management Group, and append this to the ID for all core Enterprise-scale Management Groups."
}

variable "root_name" {
  type    = string
  default = "ALZ Terraform"
  description = "If specified, will set a custom DisplayName value for the Enterprise-scale 'root' Management Group."
}

variable "default_location" {
  type = string
  description = "If specified, will use set the default location used for resource deployments where needed."
}

variable "deploy_identity_resources" {
  type    = bool
  default = true
  description = "If set to true, will deploy the 'Identity' landing zone settings."
}

variable "deploy_management_resources" {
  type    = bool
  default = true
  description = "If set to true, will deploy the 'Management' landing zone settings and add resources into the current Subscription context."
}

variable "log_retention_in_days" {
  type    = number
  default = 50
}

variable "security_alerts_email_address" {
  type    = string
  default = "set_email_here@email.com" # Replace this value with your own email address.
}

variable "management_resources_location" {
  type    = string
  default = "westeurope"
  description = "Location to place 'Management' resources."
}

variable "management_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_management_resources_custom"
  }
}

variable "deploy_connectivity_resources" {
  type    = bool
  default = true
  description = "If set to true, will enable the 'Connectivity' landing zone settings and add 'Connectivity' resources into the current Subscription context or if set to the connectivity subscription."
}

variable "connectivity_resources_location" {
  type    = string
  default = "westeurope"
  description = "Location to place 'Connectivity' resources."
}

variable "connectivity_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_connectivity_resources_custom"
  }
}