module "compute" {
        source                          = "./modules/compute"
        depends_on                      = [module.network]
        ami_id                          = var.ami_id
        single_target                   = var.single_target
        instance_type                   = var.instance_type
        associate_public_ip_address     = var.associate_public_ip_address
        key_name                        = var.key_name
        app_tf_1                        = var.app_tf_1
        app_tf_2                        = var.app_tf_2
        load_balancer_name              = var.load_balancer_name
        instance_port                   = var.instance_port
        instance_protocol               = var.instance_protocol
        lb_port                         = var.lb_port
        lb_protocol                     = var.lb_protocol
        baruch_vpc                      = module.network.baruch-vpc
        subnet_a_name                   = module.network.sub_id_1
        subnet_b_name                   = module.network.sub_id_2
}

module "network" {
        source                          = "./modules/network"
        single_target                   = var.single_target
        vpc_cidr                        = var.vpc_cidr
        subnet1_cidr                    = var.subnet1_cidr
        subnet2_cidr                    = var.subnet2_cidr
        subnet1_az                      = var.subnet1_az
        subnet2_az                      = var.subnet2_az
        baruch_vpc                      = var.vpc_name
        subnet_a_name                   = var.sub_name_1
        subnet_b_name                   = var.sub_name_2

}