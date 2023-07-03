output "cloudwatch_arn" {
  value = module.CloudWatch
}

output "cloudwatch_sch_expr" {
    value = module.CloudWatch
  
}

output "access_key" {
    value = module.IAM_user
  
}

output "secret_access_key" {
    value = module.IAM_user
  
}

output "name_of_bucket" {
    value = module.s3
  
}