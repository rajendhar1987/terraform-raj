provider "aws"{
    region = "us-east-1"

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