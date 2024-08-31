##Author: Joel Ebenka
variable "aws_region" {
  description = "This is aws region"
  default     = "us-east-1"
  type        = string
}


variable "profile" {
  description = "user account to use"
  default     = "default"
}

variable "aws_instance_type" {
  description = "This is aws ec2 type "
  default     = "t2.micro"
  type        = string
}

variable "aws_key_pair" {
  description = "Key in region"
  default     = "my_ec2_key"
  type        = string
}
