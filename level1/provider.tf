terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-remote-state-abc123abc"
    key            = "level1.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-remote-state"
  }
}

provider "aws" {
  region = "us-east-1"
}
