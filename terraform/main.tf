provider "aws" {
    region = "eu-west-1"
}

resource "aws_s3_bucket" "imgur_image_bucket" {
    bucket = "dev-imgur-clone-bucket2"

    cors_rule {
      allowed_headers = ["*"]
      allowed_methods = ["PUT", "POST"]
      allowed_origins = ["*"]
      expose_headers  = ["x-amz-server-side-encryption", "x-amz-request-id", "x-amz-id-2"]
      max_age_seconds = 3000
    }

    tags = {
        Name = "Dev Imgur Clone Bucket 2"
        Environment = "Dev"
    }
}