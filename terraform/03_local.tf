locals {
  db_creds = jsondecode(
    data.aws_secretsmanager_secret_version.postgres_test.secret_string
  )
}

