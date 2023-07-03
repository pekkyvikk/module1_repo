
resource "aws_iam_user" "newuser" {
  name = var.iam_username
  path = var.iam_path

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "newuser" {
  user = aws_iam_user.lb.name
}

data "aws_iam_policy_document" "newuser_ro" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "newuser_ro" {
    #name: Specifies the name of the user policy as "test"
  name   = "test"
  user   = aws_iam_user.lb.name
  policy = data.aws_iam_policy_document.newuser_ro.json
}