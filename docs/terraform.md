## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tags"></a> [tags](#module\_tags) | cloudopsworks/tags/local | 1.0.9 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_contributor_insight_rule.insight_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_contributor_insight_rule) | resource |
| [aws_cloudwatch_contributor_managed_insight_rule.managed_insight_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_contributor_managed_insight_rule) | resource |
| [aws_cloudwatch_event_rule.rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_event_rules"></a> [event\_rules](#input\_event\_rules) | Module Cloudwatch Event Rules configuration | `any` | `[]` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to add to the resources | `map(string)` | `{}` | no |
| <a name="input_insight_rules"></a> [insight\_rules](#input\_insight\_rules) | Module Cloudwatch Insights configuration | `any` | `[]` | no |
| <a name="input_is_hub"></a> [is\_hub](#input\_is\_hub) | Is this a hub or spoke configuration? | `bool` | `false` | no |
| <a name="input_managed_insight_rules"></a> [managed\_insight\_rules](#input\_managed\_insight\_rules) | Module Cloudwatch Managed Insights configuration | `any` | `[]` | no |
| <a name="input_org"></a> [org](#input\_org) | Organization details | <pre>object({<br/>    organization_name = string<br/>    organization_unit = string<br/>    environment_type  = string<br/>    environment_name  = string<br/>  })</pre> | n/a | yes |
| <a name="input_spoke_def"></a> [spoke\_def](#input\_spoke\_def) | Spoke ID Number, must be a 3 digit number | `string` | `"001"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_event_rules"></a> [event\_rules](#output\_event\_rules) | n/a |
| <a name="output_insight_rules"></a> [insight\_rules](#output\_insight\_rules) | n/a |
| <a name="output_managed_insight_rules"></a> [managed\_insight\_rules](#output\_managed\_insight\_rules) | n/a |
