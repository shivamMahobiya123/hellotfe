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

variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["925975727637"]
  filter {
    name   = "name"
    values = ["ZytbImg010422"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
output "aws_id" {
  value = data.aws_ami.ubuntu.id
}