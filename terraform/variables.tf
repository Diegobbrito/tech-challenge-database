variable "db_user" {
  description = "GitHub secret for database user"
  default     = var.db_user != "" ? var.db_user : ""
}

variable "db_password" {
  description = "GitHub secret for database password"
  default     = var.db_password != "" ? var.db_password : ""
}