resource "aws_lb_target_group" "tg" {
  name = var.tg_name
  port = var.tg_port
  protocol = var.tg_protocol
  vpc_id = var.vpc_id
  target_type = var.tg_target_type
health_check {
    healthy_threshold   = var.health_config_healthy_threshold
    unhealthy_threshold = var.health_config_unhealthy_threshold
    path = var.health_config_health_check_path
    interval = var.health_config_health_check_interval
}
}

