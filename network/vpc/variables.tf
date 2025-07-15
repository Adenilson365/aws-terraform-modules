variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string

}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
