variable "integration_private_endpoint_outbound_connections" {
  description = <<EOT
Map of integration_private_endpoint_outbound_connections, attributes below
Required:
    - integration_instance_id
    - subnet_id
Optional:
    - nsg_ids
    - state
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    integration_instance_id = string
    subnet_id               = string
    nsg_ids                 = optional(set(string))
    state                   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.integration_private_endpoint_outbound_connections : (
        v.state == null || (contains([for v in ["ACTIVE", "INACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"ACTIVE\", \"INACTIVE\""
  }
}

