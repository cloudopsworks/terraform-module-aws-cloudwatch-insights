##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

resource "aws_cloudwatch_event_rule" "rule" {
  for_each = {
    for item in try(var.settings.event_rules, []) : item.name => item
  }
  name                = each.value.name
  description         = try(each.value.description, null)
  event_pattern       = jsonencode(each.value.event_pattern)
  schedule_expression = try(each.value.schedule_expression, null)
  event_bus_name      = try(each.value.event_bus_name, null)
  role_arn            = try(each.value.role_arn, null)
  state               = try(each.value.state, "ENABLED")
  tags                = local.all_tags
}