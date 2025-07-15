variable "lb_name" {
  description = "Name of the Load Balancer"
  type        = string
  default     = "nlb01"
  
}

variable "is_internal" {
  description = "Whether the Load Balancer is internal or internet-facing"
  type        = bool
  default     = false
  
}

variable "lb_type" {
  description = "Type of the Load Balancer (e.g., application, network)"
  type        = string
 
  
}

variable "security_groups" {
  description = "List of security group IDs to associate with the Load Balancer"
  type        = list(string)
  default     = []
  
}

variable "nlb_subnets" {
  description = "List of subnet IDs for the Load Balancer"
  type        = list(string)
  default     = []
  
}

variable "target_group_arn" {
  description = "ARN of the Target Group to associate with the Load Balancer"
  type        = string
  default     = ""
  
}