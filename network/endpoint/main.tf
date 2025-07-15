resource "aws_vpc_endpoint" "ec2" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${var.region}.ec2"
  vpc_endpoint_type = "Interface"

  private_dns_enabled = true

  tags       = var.default_tags
  subnet_ids = var.subnet_ids
}