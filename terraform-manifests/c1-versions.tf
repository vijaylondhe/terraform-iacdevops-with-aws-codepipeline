terraform {
  required_version = "1.0.7"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.0.0"      
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"     
    }
  }
  backend "s3" {
    
  }
}

provider "aws" {
  region = var.aws_region
  profile = "default"
}

resource "random_pet" "this" {
  length = 2
}