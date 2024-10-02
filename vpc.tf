module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    name = "k8s-project-01"
    cidr = "difalut"


    azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
    public_subnets     = [""]
    private_subnets    = [""]


    enable_nat_gateway = true
    single_nat_gateway = true
    one_nat_gateway_per_az = false
    reuse_nat_ips = true


}