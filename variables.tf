variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.micro"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  cidr_block = "10.100.0.0/16"
}