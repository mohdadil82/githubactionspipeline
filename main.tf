variable "AWS_REGION" {    
    default = "eu-west-2"
}
provider "aws" {
    region = "${var.AWS_REGION}"
}
resource “aws_vpc” “prod-vpc” {
    cidr_block = “30.0.0.0/16”
    enable_dns_support = “true” #gives you an internal domain name
    enable_dns_hostnames = “true” #gives you an internal host name
    enable_classiclink = “false”
    instance_tenancy = “default”    
    
    tags {
        Name = “prod-vpc”
    }
}
