
variable "createvpc" {
    description = "Create new vpc or not ?"
    default     = false
}

variable "dbrequired" {
    description = "Create new route table for db subnet"
    default     = false
}

variable "environment" {
    description = "Environment name"
    default     = "dev"
}


variable "region_primary" {
    description = "AWS region to deploy"
    default = "eu-east-1"
}


variable "name" {
    description = "Name of the account"
}

variable "cidr_primary" {
    description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
    default     = "0.0.0.0/0"
}


variable "azs_primary" {
    description = "A list of availability zones in the region"
    default     = []
}

variable "enable_nat_gateway" {
    description = "Should be true if you want to provision NAT Gateways for each of your private networks"
    default     = false
}

variable "enable_s3_endpoint" {
    description = "Configure an S3 Endpoint on the VPC"
    default     = false
}


variable "private_subnets_primary" {
    description = "The private subnet cidr block"
    default     = []
}


variable "database_subnets_primary" {
    description = "The database subnet cidr block"
    default     = []
}


variable "public_subnets_primary" {
    description = "The public subnet cidr block"
    default     = []
}