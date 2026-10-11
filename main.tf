data "keycloak_authentication_flow" "authentication_flow_lookup" {
  for_each = var.authentication_flow_lookup

  alias    = each.value.alias
  realm_id = each.value.realm_id
}

