resource "random_string" "bucket_name" {
  length           = 28
  special          = false
  upper            = false  
}

resource "aws_s3_bucket" "learning-bucket" {
    bucket = random_string.bucket_name.result
}
