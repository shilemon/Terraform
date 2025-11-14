#Terraform Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.20.0"
    }
  }
}

#Provider Block
provider "aws" {
  region ="ap-southeast-1"
}