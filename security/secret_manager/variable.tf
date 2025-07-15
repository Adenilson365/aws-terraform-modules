variable "secret_name" {
  description = "The name of the secret to create in AWS Secrets Manager."
  type        = string
  
}


variable "secret_description" {
  description = "A description for the secret."
  type        = string

}   
variable "default_tags" {
  description = "A map of tags to assign to the secret."
  type        = map(string)

  }