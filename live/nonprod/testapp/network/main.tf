provider "aws"{
    region = "us-east-1"

}

variable "vpc_name"{
    type = string

}

variable "vpc_cidr"{
    type = string
    
}

variable "vpc_azs"{
    type = list
    
}

variable "vpc_private_subnets"{
    type = list
    
}

variable "vpc_public_subnets"{
    type = list
    
}

variable "vpc_enable_nat_gateway"{
    type = bool
    
}


variable "vpc_enable_vpn_gateway"{
    type = bool
    
}
variable "vpc_tags"{
    type = map
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name   
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = var.vpc_enable_nat_gateway
  enable_vpn_gateway = var.vpc_enable_vpn_gateway

  tags = var.vpc_tags
}