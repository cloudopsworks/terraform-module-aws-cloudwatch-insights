##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

output "event_rules" {
  value = {
    for key, rule in aws_cloudwatch_event_rule.rule : key => {
      id   = rule.id
      arn  = rule.arn
      name = rule.name
    }
  }
}

output "managed_insight_rules" {
  value = {
    for key, rule in aws_cloudwatch_contributor_managed_insight_rule.managed_insight_rule : key => {
      id            = rule.arn
      template_name = rule.template_name
    }
  }
}

output "insight_rules" {
  value = {
    for key, rule in aws_cloudwatch_contributor_insight_rule.insight_rule : key => {
      arn  = rule.resource_arn
      name = rule.rule_name
    }
  }
}