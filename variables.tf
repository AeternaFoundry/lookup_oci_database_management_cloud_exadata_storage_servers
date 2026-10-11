variable "database_management_cloud_exadata_storage_servers_lookup" {
  description = <<EOT
Map of database_management_cloud_exadata_storage_servers_lookup, attributes below
Required:
    - cloud_exadata_infrastructure_id
    - compartment_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    cloud_exadata_infrastructure_id = string
    compartment_id                  = string
    display_name                    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

