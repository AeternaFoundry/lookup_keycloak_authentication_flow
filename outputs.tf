output "authentication_flow_lookup_id" {
  description = "Map of id values across all authentication_flow_lookup, keyed the same as var.authentication_flow_lookup"
  value       = { for k, v in data.keycloak_authentication_flow.authentication_flow_lookup : k => v.id }
}
output "authentication_flow_lookup_alias" {
  description = "Map of alias values across all authentication_flow_lookup, keyed the same as var.authentication_flow_lookup"
  value       = { for k, v in data.keycloak_authentication_flow.authentication_flow_lookup : k => v.alias }
}
output "authentication_flow_lookup_realm_id" {
  description = "Map of realm_id values across all authentication_flow_lookup, keyed the same as var.authentication_flow_lookup"
  value       = { for k, v in data.keycloak_authentication_flow.authentication_flow_lookup : k => v.realm_id }
}

