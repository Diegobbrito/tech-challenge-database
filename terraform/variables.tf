variable "region" {
  description = "Region of AWS VPC"
  default = "us-east-1"
}
variable "identifier" {
  default     = "lanchonetedb"
  description = "Identifier for your DB"
}

variable "storage" {
  default     = "20"
  description = "Storage size in GB"
}

variable "engine" {
  default     = "mysql"
  description = "Engine type, here it is mysql"
}

variable "engine_version" {
  description = "Engine version"

  default = {
    mysql    = "8.0"
  }
}

variable "instance_class" {
  default     = "db.t2.micro"
  description = "Instance class"
}

variable "db_name" {
  default     = "lanchonete"
  description = "db name"
}

variable "username" {
  description = "User name"
  default     = ""
}

variable "password" {
  description = "password, provide through your ENV variables"
  default = ""
}
variable "subnet_1_cidr" {
  default     = "10.0.1.0/24"
  description = "Your AZ"
}

variable "subnet_2_cidr" {
  default     = "10.0.2.0/24"
  description = "Your AZ"
}

variable "az_1" {
  default     = "us-east-1a"
  description = "Your Az1, use AWS CLI to find your account specific"
}

variable "az_2" {
  default     = "us-east-1b"
  description = "Your Az2, use AWS CLI to find your account specific"
}

variable "vpc_id" {
  description = "Your VPC ID"
  default = "vpc-04c4622dbdafe7c10"
}
variable "cidr_blocks" {
  default     = "0.0.0.0/0"
  description = "CIDR for sg"
}

variable "sg_name" {
  default     = "rds-sg"
  description = "Tag Name for sg"
}
