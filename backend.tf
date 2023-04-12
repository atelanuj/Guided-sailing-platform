terraform {
  backend "s3" {
    bucket = "anuj-tf-state-bucket-01"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
