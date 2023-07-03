
resource "aws_cloudwatch_event_rule" "example_rule" {
  name        = var.rule_name
  description = "Example CloudWatch rule"
  schedule_expression = var.schedule_expression

  event_pattern = <<EOF
{
  "source": ["aws.ec2"],
  "detail-type": ["EC2 Instance State-change Notification"],
  "detail": {
    "state": ["running"]
  }
}
EOF
}

resource "aws_cloudwatch_event_target" "example_target" {
  rule      = aws_cloudwatch_event_rule.example_rule.name
  target_id = "example-target"

  arn = var.sns_topic_arn
}