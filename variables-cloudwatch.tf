##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

variable "event_rules" {
  description = "Module Cloudwatch Event Rules configuration"
  type        = any
  default     = []
}

variable "managed_insight_rules" {
  description = "Module Cloudwatch Managed Insights configuration"
  type        = any
  default     = []
}
variable "insight_rules" {
  description = "Module Cloudwatch Insights configuration"
  type        = any
  default     = []
}