output "group_labels_lookup_id" {
  description = "Map of id values across all group_labels_lookup, keyed the same as var.group_labels_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_group_labels.group_labels_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_labels_lookup_group" {
  description = "Map of group values across all group_labels_lookup, keyed the same as var.group_labels_lookup except keys with no group are omitted"
  value       = { for k, v in data.gitlab_group_labels.group_labels_lookup : k => v.group if v.group != null && length(v.group) > 0 }
}
output "group_labels_lookup_labels" {
  description = "Map of labels values across all group_labels_lookup, keyed the same as var.group_labels_lookup except keys with no labels are omitted"
  value       = { for k, v in data.gitlab_group_labels.group_labels_lookup : k => v.labels if v.labels != null && length(v.labels) > 0 }
}

