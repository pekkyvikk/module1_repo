module "CloudWatch" {
  
  source = "../child_module/cloud_watch"
}


module "IAM_user" {
source = "../child_module/IAM_user"
}

module "s3" {
  source = "../child_module/s3"
  
}