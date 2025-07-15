resource "aws_autoscaling_group" "atg" {
  name = var.asg_name
  desired_capacity = var.desired_capacity #quantity of instances to start
  max_size = var.max_size
  min_size = var.min_size
 vpc_zone_identifier = var.availability_zones
 target_group_arns = var.target_group_arn

  launch_template {
    id = var.launch_template_id
    version = var.launch_template_version
  }
  load_balancers = var.lb_target_group_id
}