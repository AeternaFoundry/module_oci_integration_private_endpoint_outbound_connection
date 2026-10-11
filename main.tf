resource "oci_integration_private_endpoint_outbound_connection" "integration_private_endpoint_outbound_connections" {
  for_each = var.integration_private_endpoint_outbound_connections

  integration_instance_id = each.value.integration_instance_id
  subnet_id               = each.value.subnet_id
  nsg_ids                 = each.value.nsg_ids
  state                   = each.value.state

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

