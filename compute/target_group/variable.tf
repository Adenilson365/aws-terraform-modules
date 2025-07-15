variable "tg_name" {
  description = "Name of the Target Group"
  type        = string
  default     = "tg01"
}

variable "tg_port" {
  description = "Port for the Target Group"
  type        = number
  default     = 80
  
}
variable "tg_protocol" {
  description = "Protocol for the Target Group"
  type        = string
  default     = "HTTP"
}

variable "vpc_id" {
  description = "VPC ID where the Target Group will be created"
  type        = string
  
}

variable "health_config_health_check_interval" {
  description = "Health check interval for the Target Group"
  type        = number
  default     = 30
}
variable "health_config_healthy_threshold" {
  description = "Number of consecutive successful health checks required to consider an instance healthy"
  type        = number
  default     = 5
}

variable "health_config_unhealthy_threshold" {
  description = "Number of consecutive failed health checks required to consider an instance unhealthy"
  type        = number
  default     = 2
}

variable "health_config_health_check_path" {
  description = "Path to check for health status"
  type        = string
  default     = "/"
}       


variable "tg_target_type" {
  description = "Type of target for the Target Group (e.g., instance, ip)"
  type        = string
  default     = "instance"
  
}