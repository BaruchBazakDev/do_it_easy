resource "aws_elb" "baruch_tf_app_lb" {
	name	= var.load_balancer_name
	subnets	= [aws_subnet.baruch_tf_1.id, aws_subnet.baruch_tf_2.id]
	security_groups	= [aws_security_group.loadbalancer_sg.id]
	listener {
		instance_port	= var.instance_port
		instance_protocol	= var.instance_protocol
		lb_port	= var.lb_port
		lb_protocol	= var.lb_protocol
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
