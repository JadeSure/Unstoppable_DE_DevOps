
resource "aws_kms_key" "rds_kms" {
  description = "my rds keys-password"
}

resource "aws_db_instance" "retail_rds" {
  allocated_storage    = 10
  max_allocated_storage = 20
  db_name              = "RETAIL_DB"
  identifier           = "db-retail"
  engine               = "mysql"
  engine_version       = "8.0.32"
  instance_class       = "db.t3.micro"
  manage_master_user_password   = true
  master_user_secret_kms_key_id = aws_kms_key.rds_kms.key_id
  username             = "admin"
  parameter_group_name = "default.mysql8.0"

  # deletion_protection = false
  skip_final_snapshot = true
  publicly_accessible = true
}