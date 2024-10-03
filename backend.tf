terraform {
  backend "s3" {
    bucket  = "k8s-project-terraform-state-file"
    region  = "us-east-1"
    key     = "johnkalayu/dev/terraform.state"
    dynamodb_table = "lock"
    encrypt = true


  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}