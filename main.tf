resource "ovh_cloud_project_database_kafka_schemaregistryacl" "cloud_project_database_kafka_schemaregistryacls" {
  for_each = var.cloud_project_database_kafka_schemaregistryacls

  cluster_id   = each.value.cluster_id
  permission   = each.value.permission
  resource     = each.value.resource
  service_name = each.value.service_name
  username     = each.value.username

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

