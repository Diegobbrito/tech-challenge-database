output "rds_address" {
  value = aws_db_instance.lanchonete.address
}

output "db_endpoint" {
  value = aws_db_instance.lanchonete.endpoint
}