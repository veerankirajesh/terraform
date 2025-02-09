terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"  #aws provider version 
    }
  }
}

provider "aws" {
  region = "us-east-1"
}