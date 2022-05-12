resource "aws_security_group" "baruch_tf_app" {
  name        = "baruch-tf-app-sg"
  description = "AWS sg for app instances"
  vpc_id      = var.vpc_id

  ingress {
    description     = "Allow port 3000 from locadblancer sg"
    from_port       = 3000
    to_port         = 3000
    protocol        = "TCP"
    security_groups = [aws_security_group.loadbalancer_sg.id]
  }

  ingress {
    description      = "Allow ssh from jump_server_sg"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
  ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "baruch-terraform_app-sg"
  }
}

resource "aws_security_group" "loadbalancer_sg" {
  name        = "app-lb-sg"
  description = "Allow HTTP inbound traffic to LB"
  vpc_id      = aws_vpc.baruch-vpc.id

  ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "Allow ssh from jump_server_sg"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
  ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "app-lb-sg"
  }
}
