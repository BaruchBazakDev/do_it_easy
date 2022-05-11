resource "aws_instance" "baruch_tf_app_1" {
	ami							= var.ami_id
	instance_type				= var.instance_type
	subnet_id					= data.aws_subnet.subnet_a.id
	associate_public_ip_address	= var.associate_public_ip_address
	key_name					= var.key_name
	vpc_security_group_ids		= [aws_security_group.baruch_tf_app.id]
	tags = {
		Name = var.app_tf_1
	}
}

resource "aws_instance" "baruch_tf_app_2" {
	count						= var.single_target ? 0 : 1
	ami							= var.ami_id
	instance_type				= var.instance_type
	subnet_id					= data.aws_subnet.subnet_b.id
	associate_public_ip_address	= var.associate_public_ip_address
	key_name					= var.key_name
	vpc_security_group_ids		= [aws_security_group.baruch_tf_app.id]
	tags = {
		Name = var.app_tf_2
	}
}
