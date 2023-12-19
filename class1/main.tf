resource "aws_iam_user" "lb" {
  name = "Kaizen3"
}

# resource "aws_iam_user" "lb2" {
#   name = "Kaizen2"
# }

resource "aws_iam_group" "developers" {
  name = "devops"
}
