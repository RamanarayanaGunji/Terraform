terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
    backend "s3" {
      bucket = "timing-local"
      key    = "timing"
      region = "us-east-1"
      dynamodb_table ="timing-lock"

  }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}