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
