provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "lanchonetedb" {
  identifier           = "dblanchonete"
  instance_class       = "db.t2.micro"
  engine               = "mysql"
  allocated_storage    = 20
  username             = var.db_user
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.lanchonetedb.name
  parameter_group_name = "default.mysql5.7"
}

resource "aws_db_subnet_group" "lanchonetedb" {
  name       = "db-subnet-group"
  subnet_ids = aws_subnet.lanchonetedb.*.id
}

resource "aws_subnet" "lanchonetedb" {
  count                   = 2
  cidr_block              = "10.0.1.${count.index + 1}/24"
  availability_zone       = "us-east-1a"
  vpc_id                  = aws_vpc.lanchonetedb.id
  map_public_ip_on_launch = true
}

resource "aws_vpc" "lanchonetedb" {
  cidr_block = "10.0.0.0/16"
}
