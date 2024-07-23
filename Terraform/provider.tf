terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.59.0"
    }
  }
    backend "s3" {
    bucket = "terraform-remote--s3"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
}