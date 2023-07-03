variable "rule_name" {
  description = "Name of the CloudWatch rule"
  type        = string
  default = "Rule1"
}

variable "schedule_expression" {
  description = "Schedule expression for the CloudWatch rule"
  type        = string

  default = "cron(0 0 * * ? *)"
}

variable "sns_topic_arn" {
  description = ""
  type        = string
  default = "arn:aws:sns:us-east-1:371721737434:SSM-Topic"
}