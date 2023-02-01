variable "root_id" {
  type    = string
  default = "alztf"
}

variable "root_name" {
  type    = string
  default = "ALZ Terraform"
}

variable "default_location" {
  type = string
}

# variable "deploy_management_resources" {
#   type    = bool
#   default = true
# }

# variable "log_retention_in_days" {
#   type    = number
#   default = 50
# }

# variable "security_alerts_email_address" {
#   type    = string
#   default = "rafal.pienczykowski@kainos.com" # Replace this value with your own email address.
# }

# variable "management_resources_location" {
#   type    = string
#   default = "uksouth"
# }

# variable "management_resources_tags" {
#   type = map(string)
#   default = {
#     demo_type = "deploy_management_resources_custom"
#   }
# }

variable "deploy_connectivity_resources" {
  type    = bool
  default = true
}

variable "connectivity_resources_location" {
  type    = string
  default = "westeurope"
}

variable "connectivity_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_connectivity_resources_custom"
  }
}