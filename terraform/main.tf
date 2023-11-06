provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "lanchonetedb" {
  identifier           = "lanchonetedb"
  instance_class       = "db.t2.micro"
  engine               = "mysql"
  allocated_storage    = 20
  storage_type         = "gp2"
  db_name              = "lanchonete"
  username             = var.db_user
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.lanchonetedb.name
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot = true
}

resource "aws_db_subnet_group" "lanchonetedb" {
  name       = "db-subnet-group"
  subnet_ids = [
    aws_subnet.lanchonetedb[0].id,
    aws_subnet.lanchonetedb[1].id
  ]
}


resource "aws_subnet" "lanchonetedb" {
  count                   = 2
  cidr_block              = "10.0.${count.index + 1}.0/24"
  availability_zone       = element(["us-east-1a", "us-east-1b"], count.index)
  vpc_id                  = aws_vpc.lanchonetedb.id
  map_public_ip_on_launch = true
}

resource "aws_vpc" "lanchonetedb" {
  cidr_block = "10.0.0.0/16"
}

output "rds_endpoint" {
  value = aws_db_instance.lanchonetedb.endpoint
}
