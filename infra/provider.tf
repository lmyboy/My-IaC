terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
    profile     = "default"
    alias       = "us-west-1"
    region      = "us-west-1"
}

provider "aws" {
    alias       = "us-west-2"
    region      = "us-west-2"
}