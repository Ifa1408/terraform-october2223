resource "aws_key_pair" "dep" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

output "dev" {
  value = aws_key_pair.dep.key_type
}