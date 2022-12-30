data "aws_secretsmanager_secret" "postgres_test" {
  name = "test/postgres"
}

data "aws_secretsmanager_secret_version" "postgres_test" {
  secret_id = data.aws_secretsmanager_secret.postgres_test.id
}