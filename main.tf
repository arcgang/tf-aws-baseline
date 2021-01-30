locals {
    disable_vpc = var.createvpc

    common_tags = {
        project = var.name
        stack_env = var.environment
    }

    got_db = var.dbrequired
}

module "vpc"{
    source = "terraform-aws-modules/vpc/aws"
    create_vpc = local.disable_vpc == true ? false : true
    name                     = var.name
    cidr                     = var.cidr_primary
    azs                      = var.azs_primary
    private_subnets          = var.private_subnets_primary
    database_subnets         = var.database_subnets_primary
    public_subnets           = var.public_subnets_primary
    enable_nat_gateway       = var.enable_nat_gateway
    enable_s3_endpoint       = var.enable_s3_endpoint
    tags                     = local.common_tags

    enable_dhcp_options = false

    create_database_subnet_route_table = local.got_db == true ? true : false

}