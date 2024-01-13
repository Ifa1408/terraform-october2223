provider "aws" {
  region = var.region
}

resource "aws_key_pair" "project2" {
  key_name   = "project-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_vpc" "group-2" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "group-2"
  }
}

resource "aws_subnet" "s1" {
  vpc_id     = aws_vpc.group-2.id
  cidr_block = var.subnet1_cidr
  subnet_id = aws_subnet.s1.id
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet1"
  }
}

resource "aws_subnet" "s2" {
  vpc_id     = aws_vpc.group-2.id
  cidr_block = var.subnet2_cidr


  map_public_ip_on_launch = true

  tags = {
    Name = "subnet2"
  }
}

resource "aws_subnet" "s3" {
  vpc_id     = aws_vpc.group-2.id
  cidr_block = var.subnet3_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet3"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.group-2.id

  tags = {
    Name = "group-2-igw"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.group-2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "group-2-rt"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.s1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.s2.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.s3.id
  route_table_id = aws_route_table.rt.id
}