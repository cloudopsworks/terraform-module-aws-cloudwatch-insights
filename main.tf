##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

resource "aws_cloudwatch_event_rule" "rule" {
  for_each = {
    for item in var.event_rules : item.name => item
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

resource "aws_cloudwatch_contributor_managed_insight_rule" "managed_insight_rule" {
  for_each = {
    for item in var.managed_insight_rules : item.name => item
  }
  resource_arn  = each.value.resource_arn
  template_name = each.value.template_name
  tags          = local.all_tags
  #rule_state    = try(each.value.rule_state, "ENABLED")
}

resource "aws_cloudwatch_contributor_insight_rule" "insight_rule" {
  for_each = {
    for item in var.insight_rules : item.name => item
  }
  rule_name       = each.value.name
  rule_state      = try(each.value.rule_state, "ENABLED")
  rule_definition = jsonencode(each.value.rule_definition)
  tags            = local.all_tags
}