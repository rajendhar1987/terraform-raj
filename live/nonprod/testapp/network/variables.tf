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