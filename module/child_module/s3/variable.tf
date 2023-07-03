
variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "bucket009"
}

variable "bucket_acl" {
  description = "Access control list (ACL) for the S3 bucket"
  default     = "private"
}