output "region" {
    value = var.region_primary
}

output "vpc_id_primary" {
    description = "The ID of the VPC"
    value = module.vpc.vpc_id
}

# CIDR blocks
output "vpc_cidr_block_primary" {
    description = "The CIDR block of the VPC"
    value       = module.vpc.vpc_cidr_block
}

# Subnets
output "private_subnets_cidr_blocks_primary" {
    description = "List of private subnet CIDRs"
    value       = module.vpc.private_subnets_cidr_blocks
}

output "private_subnets_primary" {
    description = "List of IDs of private subnets"
    value       = module.vpc.private_subnets
}

output "public_subnets_primary" {
    description = "List of IDs of public subnets"
    value       = module.vpc.public_subnets
}

output "public_subnets_cidr_blocks_primary" {
    description = "List of private subnet CIDRs"
    value       = module.vpc.public_subnets_cidr_blocks
}

output "database_subnets_cidr_blocks" {
    value = module.vpc.database_subnets_cidr_blocks
}

output "database_subnet_group_id" {
    value = module.vpc.database_subnet_group
}