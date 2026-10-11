variable "cloud_project_database_kafka_schemaregistryacls" {
  description = <<EOT
Map of cloud_project_database_kafka_schemaregistryacls, attributes below
Required:
    - cluster_id
    - permission
    - resource
    - service_name
    - username
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    cluster_id   = string
    permission   = string
    resource     = string
    service_name = string
    username     = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

