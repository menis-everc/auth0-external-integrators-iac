output "api_id" {
  value       = auth0_resource_server.api.id
  description = "The Auth0 API resource server ID"
}

output "m2m_clients" {
  value = {
    for name, client in auth0_client.m2m_clients :
    name => {
      client_id     = client.client_id
      ams_account_id = client.client_metadata["ams_account_id"]
    }
  }
  description = "Mapping of customer client names to their client credentials and AMS account IDs"
}
