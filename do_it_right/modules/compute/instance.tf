resource "aws_instance" "baruch_tf_app_1" {
	ami	= var.ami_id
	instance_type	= var.instance_type
	subnet_id	= aws_subnet.baruch_tf_1.id
	associate_public_ip_address	= var.associate_public_ip_address
	key_name	= var.kay_name
	vpc_security_group_ids = [
		aws_security_group.baruch_tf_app.id
	]
	tags = {
		Name = var.app_tf_1
	}
}

resource "aws_instance" "baruch_tf_app_2" {
	ami	= var.ami_id
	instance_type	= var.instance_type
	subnet_id	= aws_subnet.baruch_tf_2.id
	associate_public_ip_address	= var.associate_public_ip_address
	key_name	= var.kay_name
	vpc_security_group_ids = [
		aws_security_group.baruch_tf_app.id
	]
	tags = {
		Name = var.app_tf_2
	}
}
