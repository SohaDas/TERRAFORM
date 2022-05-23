resource "aws_iam_group" "GROUP1" {
  name = "GROUPS1"
}
resource "aws_iam_group_membership" "TEAM" {
  name = "TEAM"

  users = [
    aws_iam_user.USER12.name
  ]
  group = aws_iam_group.GROUP1.name
}