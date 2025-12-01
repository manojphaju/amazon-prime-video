terraform {
  required_version = ">= 1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  # backend "s3" {
  #   bucket         = "dev-aman-tf-bucket"
  #   region         = "eu-west-2"
  #   key            = "eks/terraform.tfstate"
  #   dynamodb_table = "Lock-Files"
  #   encrypt        = true
  # }
  backend "local" {}
}

provider "aws" {
  region = var.aws-region
}
