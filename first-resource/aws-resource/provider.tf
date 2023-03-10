/* provider "github" {
  token = "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"
}

*/
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

/*
# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = ["0.0.0.0/0"]
}
*/