#Provider: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb
resource "aws_lb" "nlb" {
 name              = var.lb_name 
 internal = var.is_internal
    load_balancer_type = var.lb_type
    security_groups = var.security_groups
    subnets = var.nlb_subnets 

}


resource "aws_lb_listener" "nlb_listener" {
  load_balancer_arn = aws_lb.nlb.arn
  port              = "80"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = var.target_group_arn
  }
}