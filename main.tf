module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
 //creating vpc 
    name = "k8s-project-01"
    cidr = "10.0.0.0/16"
 // enable vpc dns parameter
    enable_dns_hostnames = true
    enable_dns_support = true

 // creating subnets 
    azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
    public_subnets     = ["10.0.0.1/24", "10.0.0.2/24", "10.0.0.3/24"]
    private_subnets    = ["10.0.0.4/24", "10.0.0.5/24", "10.0.0.6/24"]
    database_subnets   = ["10.0.0.7/24", "10.0.0.8/24", "10.0.0.9/24"]

 // enableing nat and inter-gateway 
    enable_nat_gateway = true
    single_nat_gateway = true
    one_nat_gateway_per_az = false
    reuse_nat_ips = true


}

//resource "aws_route_table" "public_route-table" {} 

