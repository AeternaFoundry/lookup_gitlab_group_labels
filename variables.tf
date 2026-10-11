variable "group_labels_lookup" {
  description = <<EOT
Map of group_labels_lookup, attributes below
Required:
    - group
EOT

  type = map(object({
    group = string
  }))
}

