resource "aws_instance" "web" {
  ami           = "ami-0ee4f2271a4df2d7d"
  instance_type = "t2.micro"
  availability_zone = "us-east-2c"
  

  tags = {
    Name = "Homework-ec2"
  }
}