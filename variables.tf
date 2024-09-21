variable "project_id" {
  description = "The ID of the project to manage permission mappings for."
  type        = number
}

variable "permission_mappings" {
  description = "List of permission mappings to create."
  type = list(object({
    app_role_id    = number
    user_group_ids = set(number)
    user_ids       = set(number)
  }))
  validation {
    condition = alltrue([
      for mapping in var.permission_mappings :
      (length(mapping.user_group_ids) > 0) || (length(mapping.user_ids) > 0)
    ])
    error_message = "Each permission mapping must have at least one user_group_id or user_id."
  }
}
