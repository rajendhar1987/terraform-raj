terraform {

  cloud {
    organization = "raj-enterprise"

    workspaces {
      name = "testapp-nonprod-useast"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 0.14.0"
}