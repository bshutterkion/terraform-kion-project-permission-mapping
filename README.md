<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_project_permission_mapping.this](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/project_permission_mapping) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_permission_mappings"></a> [permission\_mappings](#input\_permission\_mappings) | List of permission mappings to create. | <pre>list(object({<br>    app_role_id    = number<br>    user_group_ids = set(number)<br>    user_ids       = set(number)<br>  }))</pre> | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project to manage permission mappings for. | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->