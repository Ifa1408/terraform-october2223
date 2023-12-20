resource "aws_iam_user" "ls" {
  name = "Ifadat"
}

resource "aws_iam_user" "ls1" {
  name = "Kaizen"
}

resource "aws_iam_user" "ls2" {
  name = "Hello"
}

resource "aws_iam_user" "ls3" {
  name = "World"
}

resource "aws_iam_group" "admin" {
  name = "Devops"
}

resource "aws_iam_group" "admin1" {
  name = "Qa"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"
  users = [

   aws_iam_user.ls.name,
    aws_iam_user.ls1.name,
  ]
  group = aws_iam_group.admin.name
}

resource "aws_iam_group_membership" "team1" {
  name = "tf-testing-group-membership"
  users = [

   aws_iam_user.ls2.name,
    aws_iam_user.ls3.name,
  ]
  group = aws_iam_group.admin1.name
}

resource "aws_iam_user" "ls4" {
  name = "admin1"
}


output "sun" {
  value = aws_iam_user.ls
}

output "sun1" {
  value = aws_iam_user.ls1.unique_id
}