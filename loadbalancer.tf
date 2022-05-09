resource "aws_elb" "baruch_tf_app_lb" {
	name	= ""
	subnets	= [aws_subnet.baruch_tf_1.id, aws_subnet.baruch_tf_2.id]
	security_groups	= [aws_security_group.loadbalancer_sg.id]
	listener {
		instance_port	= 3000
		instance_protocol	= "tcp"
		lb_port	= 80
		lb_protocol	= "tcp"
	}

	health_check {
		healthy_threshold	= 2
		unhealthy_threshold	= 2
		timeout	= 3
		target	= "HTTP:3000/"
		interval	= 30
	}

	instances	= [aws_instance.baruch_tf_app_1.id, aws_instance.baruch_tf_app_2.id]
	cross_zone_load_balancing	= true

	tags = {
		Name = "Baruch-tf-lb"
	}
}
