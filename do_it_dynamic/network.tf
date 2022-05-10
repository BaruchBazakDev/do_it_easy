resource "aws_vpc" "baruch-vpc" {
  cidr_block  = var.vpc_cidr
  tags = {
    Name = "baruch-vpc"
  }
}

resource "aws_subnet" "baruch_tf_1" {
  vpc_id  = aws_vpc.baruch-vpc.id
  cidr_block  = var.subnet1_cidr
  availability_zone = var.subnet1_az 
  tags = {
    Name = "baruch-terraform1-subnet"
  }
}

resource "aws_subnet" "baruch_tf_2" {
  vpc_id  = aws_vpc.baruch-vpc.id
  cidr_block  = var.subnet2_cidr
  availability_zone = var.subnet2_az 
  tags = {
    Name = "baruch-terraform2-subnet"
  }
}

resource "aws_internet_gateway" "baruch-tf-gw" {
  vpc_id = aws_vpc.baruch-vpc.id
  tags = {
    Name = "baruch-tf-gw"
  }
}

resource "aws_route_table" "Baruch-tf-rt" {
  vpc_id = aws_vpc.baruch-vpc.id

  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.baruch-tf-gw.id
  }

  tags = {
    Name = "baruch-tf-rt-"
  }
}

resource "aws_main_route_table_association" "association" {
  vpc_id         = aws_vpc.baruch-vpc.id
  route_table_id = aws_route_table.Baruch-tf-rt.id
}
