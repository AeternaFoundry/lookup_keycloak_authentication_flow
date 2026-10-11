output "authentication_flow_lookup_id" {
  description = "Map of id values across all authentication_flow_lookup, keyed the same as var.authentication_flow_lookup except keys with no id are omitted"
  value       = { for k, v in data.keycloak_authentication_flow.authentication_flow_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "authentication_flow_lookup_alias" {
  description = "Map of alias values across all authentication_flow_lookup, keyed the same as var.authentication_flow_lookup except keys with no alias are omitted"
  value       = { for k, v in data.keycloak_authentication_flow.authentication_flow_lookup : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "authentication_flow_lookup_realm_id" {
  description = "Map of realm_id values across all authentication_flow_lookup, keyed the same as var.authentication_flow_lookup except keys with no realm_id are omitted"
  value       = { for k, v in data.keycloak_authentication_flow.authentication_flow_lookup : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}

