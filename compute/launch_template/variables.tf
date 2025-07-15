variable "launch_template_image_id" {
  description = "The ID of the AMI to use for the launch template"
  type        = string
  
}

variable "launch_template_name" {
  description = "The name of the launch template"
  type        = string
  
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  
}

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  sensitive   = true
  
}

variable "user_data" {
  description = "The user data to use for the instance"
  type        = string
  default     = null
  
}

variable "iam_instance_profile_name" {
  description = "The name of the IAM instance profile to use"
  type        = string
  default     = null
  
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = false
  
} 

variable "vpc_security_group_ids" {
  description = "The security group to use for the instance"
  type        = list(string)
  default     = []
}

variable "default_tags" {
  description = "Default tags to apply to the resources"
  type        = map(string)

  
}

variable "vpc_id" {
  description = "The ID of the subnet to launch the instance in"
  type        = string
  default     = null
  
}