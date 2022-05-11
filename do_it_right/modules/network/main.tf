module "network" {
        source                          = "./modules/network"
        single_target                   = var.single_target
        vpc_cidr                        = var.vpc_cidr
        subnet1_cidr                    = var.subnet1_cidr
        subnet2_cidr                    = var.subnet2_cidr
        subnet1_az                      = var.subnet1_az
        subnet2_az                      = var.subnet2_az
}
