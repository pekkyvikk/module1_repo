
variable "iam_username" {
  description = "Name of the IAM user"
  type        = string
  default     = "newuser"
}

variable "iam_path" {
  description = "Path for the IAM user"
  type        = string
  #path parameter allows you to specify a path for organizing and grouping IAM users within your AWS account.
  default     = "/system/"
}