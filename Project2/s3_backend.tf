terraform {
  backend "s3" {
    bucket = "mybucketproject2"
    key    = "project2/terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "lock-state"
  }
}
