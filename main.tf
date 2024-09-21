resource "kion_project_permission_mapping" "this" {
  count           = length(var.permission_mappings)
  project_id      = var.project_id
  app_role_id     = var.permission_mappings[count.index].app_role_id
  user_groups_ids = sort(distinct(var.permission_mappings[count.index].user_group_ids))
  user_ids        = sort(distinct(var.permission_mappings[count.index].user_ids))
}
