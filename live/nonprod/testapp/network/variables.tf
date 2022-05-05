variable "vpc_name"{
    type = string
     default     = "us-east-1"

}

variable "vpc_cidr"{
    type = string
     default     = "10.0.0.0/5"
    
}

variable "vpc_azs"{
    type = list
    default = ["us-east-1a"]
    
}

variable "vpc_private_subnets"{
    type = list
    default = ["10.0.0.0"]
}

variable "vpc_public_subnets"{
    type = list
    default = ["10.0.0.0"]
    
}

variable "vpc_enable_nat_gateway"{
    type = bool
    default=false
}


variable "vpc_enable_vpn_gateway"{
    type = bool
    default=false
    
}
variable "vpc_tags"{
    type = map
    default = {
        "key1" = "value1",
        "key2" = "value2"
}
}