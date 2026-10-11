data "gitlab_group_labels" "group_labels_lookup" {
  for_each = var.group_labels_lookup

  group = each.value.group
}

