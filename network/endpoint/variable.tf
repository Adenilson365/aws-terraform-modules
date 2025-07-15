variable "vpc_id" {
  description = "The ID of the VPC where the endpoint will be created."
  type        = string

}

variable "region" {
  description = "The AWS region where the endpoint will be created."
  type        = string
}
variable "default_tags" {
  description = "Default tags to apply to the endpoint."
  type        = map(string)
  default     = {}
}

variable "subnet_ids" {
  description = "List of subnet IDs where the endpoint will be created."
  type        = list(string)
  default     = []

}