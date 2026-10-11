output "integration_private_endpoint_outbound_connections_id" {
  description = "Map of id values across all integration_private_endpoint_outbound_connections, keyed the same as var.integration_private_endpoint_outbound_connections except keys with no id are omitted"
  value       = { for k, v in oci_integration_private_endpoint_outbound_connection.integration_private_endpoint_outbound_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_private_endpoint_outbound_connections_integration_instance_id" {
  description = "Map of integration_instance_id values across all integration_private_endpoint_outbound_connections, keyed the same as var.integration_private_endpoint_outbound_connections except keys with no integration_instance_id are omitted"
  value       = { for k, v in oci_integration_private_endpoint_outbound_connection.integration_private_endpoint_outbound_connections : k => v.integration_instance_id if v.integration_instance_id != null && length(v.integration_instance_id) > 0 }
}
output "integration_private_endpoint_outbound_connections_nsg_ids" {
  description = "Map of nsg_ids values across all integration_private_endpoint_outbound_connections, keyed the same as var.integration_private_endpoint_outbound_connections except keys with no nsg_ids are omitted"
  value       = { for k, v in oci_integration_private_endpoint_outbound_connection.integration_private_endpoint_outbound_connections : k => v.nsg_ids if v.nsg_ids != null && length(v.nsg_ids) > 0 }
}
output "integration_private_endpoint_outbound_connections_state" {
  description = "Map of state values across all integration_private_endpoint_outbound_connections, keyed the same as var.integration_private_endpoint_outbound_connections except keys with no state are omitted"
  value       = { for k, v in oci_integration_private_endpoint_outbound_connection.integration_private_endpoint_outbound_connections : k => v.state if v.state != null && length(v.state) > 0 }
}
output "integration_private_endpoint_outbound_connections_subnet_id" {
  description = "Map of subnet_id values across all integration_private_endpoint_outbound_connections, keyed the same as var.integration_private_endpoint_outbound_connections except keys with no subnet_id are omitted"
  value       = { for k, v in oci_integration_private_endpoint_outbound_connection.integration_private_endpoint_outbound_connections : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}

