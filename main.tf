
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  length           = 28
  special          = false
  upper            = false  
}

output "random_bucket_name" {
  value = random_string.bucket_name.result
}

resource "aws_s3_bucket" "learning-bucket" {
    bucket = random_string.bucket_name.result
}
