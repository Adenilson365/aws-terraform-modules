resource "aws_launch_template" "launch_template" {
  name = var.launch_template_name
  image_id = var.launch_template_image_id
  instance_type = var.instance_type
  key_name = var.key_name
  user_data = var.user_data
 
  iam_instance_profile {
    name = var.iam_instance_profile_name
    }
  #   network_interfaces {
  #   associate_public_ip_address = var.associate_public_ip_address
  # }

  vpc_security_group_ids = var.vpc_security_group_ids

  tag_specifications {
    resource_type = "instance"
    tags = var.default_tags
  }
}