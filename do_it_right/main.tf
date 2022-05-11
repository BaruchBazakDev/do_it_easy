module "compute" {
        source                          = "./modules/compute"
        depends_on                      = [module.network]
        ami_id                          = var.ami_id
        single_target                   = var.single_target
        instance_type                   = var.instance_type
        associate_public_ip_address     = var.associate_public_ip_address
        key_name                        = var.key_name
        app_1_tag                       = var.app_tf_1
        app_2_tag                       = var.app_tf_2
        load_balancer_name              = var.load_balancer_name
        instance_port                   = var.instance_port
        instance_protocol               = var.instance_protocol
        lb_prot                         = var.lb_port
        lb_protocol                     = var.lb_protocol
        vpc_name                        = module.network.baruch-vpc
        subnet_a_name                   = module.network.baruch-tf-1
        subnet_b_name                   = module.network.baruch-tf-1
}

module "network" {
        source                          = "./modules/network"
        single_target                   = var.single_target
        vpc_cidr                        = var.vpc_cidr
        subnet1_cidr                    = var.subnet1_cidr
        subnet2_cidr                    = var.subnet2_cidr
        subnet1_az                      = var.subnet1_az
        subnet2_az                      = var.subnet2_az

}