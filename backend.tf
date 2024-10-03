terraform {
  backend "s3" {
    bucket  = "k8s-project-terraform-state-file"
    region  = "us_east_1"
    key     = "johnkalayu/dev/terraform.state"
    encrypt = true


  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}