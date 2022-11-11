terraform {
  required_providers {
    aws = "~> 4.3.0"
  }

  backend "s3" {
    bucket = "olufolakeadebiyi"
    key    = "test/app-stack.tfstate"
    region = var.AWS_REGION
  }
}

provider "aws" {
  region = var.AWS_REGION
}