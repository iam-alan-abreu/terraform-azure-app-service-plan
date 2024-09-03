<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_autoscale_setting.default_autoscale](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_autoscale_setting) | resource |
| [azurerm_service_plan.default_plan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_divide_by_instance_count"></a> [divide\_by\_instance\_count](#input\_divide\_by\_instance\_count) | Autoscale based on instance count. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Tags which should be assigned to the Service plan | `string` | n/a | yes |
| <a name="input_landingzone"></a> [landingzone](#input\_landingzone) | Zone which should be assigned to the Service plan | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The azure region where the Service plan should exist | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name which should be used for this Service plan name. | `string` | n/a | yes |
| <a name="input_notification_emails"></a> [notification\_emails](#input\_notification\_emails) | Autoscale notification mails. | `list(string)` | `[]` | no |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | Service plan OS type name. | `string` | `"Linux"` | no |
| <a name="input_product"></a> [product](#input\_product) | Product which should be assigned to the Service plan | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Resource group location of the SQL server to be provisioned. | `string` | `"useast"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource group name of the SQL server to be provisioned. | `string` | `""` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | Service plan sku. | `string` | `"Y1"` | no |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | The suffix which should be used for this Service plan. | `string` | `"001"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tag which should be used for this Service plan. | `map(any)` | `{}` | no |
| <a name="input_use_suffix"></a> [use\_suffix](#input\_use\_suffix) | Controls if suffix should be append at name | `bool` | `false` | no |
| <a name="input_worker_count"></a> [worker\_count](#input\_worker\_count) | Service plan initial workers count. | `number` | `1` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->