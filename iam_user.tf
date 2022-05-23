resource "aws_iam_user" "USER12" {
  name = "USER12"
  tags = {
    tag-key = "TAG"
  }
}
resource "aws_iam_access_key" "USER12" {
  user = aws_iam_user.USER12.name
}



