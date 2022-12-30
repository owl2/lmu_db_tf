resource "aws_db_instance" "test_db" {
  allocated_storage    = 20
  db_name              = "test"
  engine               = "postgres"
  engine_version       = "13.7"
  instance_class       = "db.t4g.micro"
  username             = local.db_creds.user
  password             = local.db_creds.password
  parameter_group_name = "default.postgres13"
  skip_final_snapshot  = true
  publicly_accessible  = true
  tags = {
    Owner = "tf_lmu"
  }
}