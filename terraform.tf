terraform {
  required_version = "~> 0.12.0"

  backend "s3" {
    key = "tf-gtsport"

    bucket         = "veberarnaud-terraform-states"
    dynamodb_table = "veberarnaud-terraform-locks"
  }
}

provider "aws" {
  alias = "default"

  region = "us-east-1"

  version = "~> 2.25"
}

provider "local" {
  version = "~> 1.3"
}

data "aws_region" "current" {}
