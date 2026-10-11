variable "authentication_flow_lookup" {
  description = <<EOT
Map of authentication_flow_lookup, attributes below
Required:
    - alias
    - realm_id
EOT

  type = map(object({
    alias    = string
    realm_id = string
  }))
}

