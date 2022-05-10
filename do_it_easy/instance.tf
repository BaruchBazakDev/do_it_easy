resource "aws_instance" "baruch_tf_app_1" {
	ami	= "ami-02584c1c9d05efa69"
	instance_type	= "t2.micro"
	subnet_id	= aws_subnet.baruch_tf_1.id
	associate_public_ip_address	= true
	key_name	= "Baruch_Jenkins"
	vpc_security_group_ids = [
		aws_security_group.baruch_tf_app.id
	]
	tags = {
		Name = "baruch_tf_app1"
	}
}

resource "aws_instance" "baruch_tf_app_2" {
	ami	= "ami-02584c1c9d05efa69"
	instance_type	= "t2.micro"
	subnet_id	= aws_subnet.baruch_tf_2.id
	associate_public_ip_address	= true
	key_name	= "Baruch_Jenkins"
	vpc_security_group_ids = [
		aws_security_group.baruch_tf_app.id
	]
	tags = {
		Name = "baruch_tf_app2"
	}
}
