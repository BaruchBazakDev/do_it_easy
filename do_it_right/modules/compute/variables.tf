variable "ami_id" {
	type = string
	default = "ami-02584c1c9d05efa69"
}

variable "instance_type" {
        type = string
        default = "t2.micro"
}

variable "associate_public_ip_address" {
        type = bool
        default = true
}

variable "key_name" {
        type = string
        default = "Baruch_Jenkins"
}

variable "app_tf_1" {
        type = string
        default = "baruch_tf_app1"
}

variable "app_tf_2" {
        type = string
        default = "baruch_tf_app2"
}

variable "single_target" {
	type = bool
	default = false
}

variable "load_balancer_name" {
        type = string
        default = "baruch-lb"
}

variable "instance_port" {
        type = string
        default = "3000"
}

variable "instance_protocol" {
        type = string
        default = "tcp"
}

variable "lb_port" {
        type = string
        default = "80"
}

variable "lb_protocol" {
        type = string
        default = "tcp"
}