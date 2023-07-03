
output "access_key" {
  value = aws_iam_access_key.newuser.id
}

output "secret_access_key" {
  value = aws_iam_access_key.newuser.secret
}