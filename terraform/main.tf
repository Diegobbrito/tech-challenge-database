provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "lanchonete_db" {
  identifier           = "lanchonetedb"
  instance_class       = "db.t2.micro"
  engine               = "mysql"
  allocated_storage    = 20
  storage_type         = "gp2"
  db_name              = "lanchonete"
  username             = var.db_user
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.lanchonete_db.name
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot = true
}

resource "aws_db_subnet_group" "lanchonete_db" {
  name       = "db-subnet-group"
  subnet_ids = [
    aws_subnet.lanchonete_db[0].id,
    aws_subnet.lanchonete_db[1].id
  ]
}


resource "aws_subnet" "lanchonete_db" {
  count                   = 2
  cidr_block              = "10.0.${count.index + 1}.0/24"
  availability_zone       = element(["us-east-1a", "us-east-1b"], count.index)
  vpc_id                  = aws_vpc.lanchonete_db.id
  map_public_ip_on_launch = true
}

resource "aws_vpc" "lanchonete_db" {
  cidr_block = "10.0.0.0/16"
}

output "rds_endpoint" {
  value = aws_db_instance.lanchonete_db.endpoint
}
