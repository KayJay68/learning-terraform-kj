terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-2"
}

module "vpc" {
  source = "../../"

  create_vpc = false

  manage_default_vpc               = true
  default_vpc_name                 = "VPC Didasko"
  default_vpc_enable_dns_hostnames = true

  tags = local.tags
}