variable "subnet_id" {
  description = "The ID of the subnet where the EC2 Instance Connect Endpoint will be created."
  type        = string

}

variable "default_tags" {
  description = "Default tags to apply to the EC2 Instance Connect Endpoint."
  type        = map(string)
  default     = {}

}