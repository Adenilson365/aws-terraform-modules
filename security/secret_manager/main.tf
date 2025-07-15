resource "aws_secretsmanager_secret" "secret" {
  name = var.secret_name
  description = var.secret_description
  tags = var.default_tags

}