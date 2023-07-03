
output "cloudwatch_arn" {
  value = aws_cloudwatch_event_rule.example_rule.arn
}

output "cloudwatch_sch_expr" {
  value = aws_cloudwatch_event_rule.example_rule.schedule_expression
}