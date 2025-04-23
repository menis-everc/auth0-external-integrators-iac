variable "auth0_domain" {
  description = "Your Auth0 tenant domain, e.g., your-tenant.auth0.com"
  type        = string
}

variable "auth0_client_id" {
  description = "Auth0 Management API client id"
  type        = string
}

variable "auth0_client_secret" {
  description = "Auth0 Management API client secret"
  type        = string
  sensitive   = true
}

variable "api_name" {
  description = "Name for the Auth0 API (resource server)"
  type        = string
}

variable "api_identifier" {
  description = "Identifier (audience) for the Auth0 API, e.g., https://api.yourorg.com"
  type        = string
}

variable "api_scopes" {
  description = "List of common scopes for the Auth0 API"
  type        = list(string)
  default     = ["read:messages", "write:messages"]
}

variable "client_accounts" {
  description = "Mapping of customer client names to their AMS account IDs and Org IDs"
  type = map(object({
    ams_account_id = string
    org_id         = string
  }))
}
