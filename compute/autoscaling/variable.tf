variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
  default     = "atg01"
}

variable "desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group"
  type        = number
  default     = 0
}

variable "max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
  default     = 0
}

variable "min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
  default     = 0
  
}

variable "availability_zones" {
  description = "List of availability zones for the Auto Scaling Group"
  type        = list(string)
  default     = []
}

variable "launch_template_id" {
  description = "ID of the Launch Template to use for the Auto Scaling Group"
  type        = string
  default     = ""
  
}

variable "launch_template_version" {
  description = "Version of the Launch Template to use for the Auto Scaling Group"
  type        = string
  default     = "$Latest"
  
}

variable "lb_target_group_id" {
  description = "ID of the Load Balancer Target Group"
  type        = list(string)
  default     = []
}

variable "target_group_arn" {
  description = "ARN of the Target Group for the Auto Scaling Group"
  type        = list(string)
  default     = []
  
}