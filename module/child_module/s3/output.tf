
output "bucket_name" {
  value       = aws_s3_bucket.example_bucket.id
  description = "Name of the created S3 bucket"
}