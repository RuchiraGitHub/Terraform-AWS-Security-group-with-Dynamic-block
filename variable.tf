variable "aws_region" {
  type    = string
  default = "us-east-1"  
}

variable "sg_name" {
  description = "Name for the security group"
  type        = string
  default     = "sg_dynamic"
}

variable "sg_ports" {
  description = "List of ports for ingress rules"
  type        = list(number)
  default = [ 80, 443, 8080, 8000 ]
}