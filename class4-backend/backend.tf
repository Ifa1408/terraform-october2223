terraform {
  backend "s3" {
    bucket = "my-bucket-kaizen"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}
