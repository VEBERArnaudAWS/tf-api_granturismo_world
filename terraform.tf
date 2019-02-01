terraform {
  required_version = "0.11.11"

  backend "s3" {
    key = "tf-gtsport"

    bucket         = "veberarnaud-terraform-states"
    dynamodb_table = "veberarnaud-terraform-locks"
  }
}

provider "aws" {
  alias = "default"

  region = "us-east-1"

  version = "1.54.0"
}

provider "local" {
  version = "1.1.0"
}

data "aws_region" "current" {}
