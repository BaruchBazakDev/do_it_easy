variable "vpc_cidr" {
        type = string
        default = "10.10.0.0/16"
}

variable "subnet1_cidr" {
        type = string
        default = "10.10.100.0/24"
}

variable "subnet2_cidr" {
        type = string
        default = "10.10.101.0/24"
}

variable "subnet1_az" {
        type = string
        default = "eu-central-1a"
}

variable "subnet2_az" {
        type = string
        default = "eu-central-1b"
}

variable "vpc_name" {
        type = string
        default = "baruch-vpc"
}

variable "sub_name_1" {
        type = string
        default = "baruch-terraform1-subnet"
}

variable "sub_name_2" {
        type = string
        default = "baruch-terraform2-subnet"
}
