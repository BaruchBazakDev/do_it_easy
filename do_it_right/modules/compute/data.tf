data "aws_vpc" "baruch_do_it_right" {
	filter {
		name = "tag:Name"
		values = [var.vpc_name]
	}
}

data "aws_subnet" "subnet_a" {
	filter {
		name = "tag:Name"
		values = [var.subnet_a_name]
	}
}

data "aws_subnet" "subnet_b" {
	filter {
		name = "tag:Name"
		values = [var.subnet_b_name]
	}

}
