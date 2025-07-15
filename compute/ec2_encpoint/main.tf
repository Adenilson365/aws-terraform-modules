resource "aws_ec2_instance_connect_endpoint" "example" {
  subnet_id = var.subnet_id

  tags = merge(
    var.default_tags,
    {
      Name = "ec2-instance-connect-endpoint"
    }
  )
}