terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 1.14.0"
    }
  }
}

provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

#############################
# 1. Define the API (Resource Server)
#############################
resource "auth0_resource_server" "api" {
  name       = var.api_name
  identifier = var.api_identifier
}

#############################
# 1a. Create Common Scopes for the API as Separate Resources
#############################
resource "auth0_resource_server_scope" "scopes" {
  for_each = toset(var.api_scopes)

  resource_server_identifier = auth0_resource_server.api.identifier
  scope                      = each.value
  description                = "Scope for ${each.value}"
}

#############################
# 2. Create External Customer M2M Clients
#############################
resource "auth0_client" "m2m_clients" {
  for_each = var.client_accounts

  name     = each.key
  app_type = "non_interactive"

  # Store the AMS account id in client metadata
  client_metadata = {
    ams_account_id = each.value.ams_account_id
    org_id         = each.value.org_id
  }
}

#############################
# 3. Authorize Each M2M Client to Access the API with a Dynamic AMS Permission
#############################
resource "auth0_client_grant" "m2m_client_grants" {
  for_each = auth0_client.m2m_clients

  client_id = each.value.client_id
  audience  = auth0_resource_server.api.identifier

  # Grant both the common scopes and a dynamic permission based on the AMS account ID.
  scopes = concat(
    var.api_scopes,
    [
      format("ams:%s", each.value.client_metadata["ams_account_id"]),
      format("org:%s", each.value.client_metadata["org_id"])
    ]
  )
}