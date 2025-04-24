variable "environment" {
  description = "The deployment environment (dev, stage, prod)"
  type        = string
  default     = "dev"
}

variable "environments" {
  description = "Configuration for each environment"
  type = map(object({
    auth0_domain        = string
    auth0_client_id     = string
    auth0_client_secret = string
    api_name            = string
    api_identifier      = string
    api_scopes          = list(string)
    client_accounts     = map(object({
      ams_account_id = string
      org_id         = string
    }))
  }))
}
