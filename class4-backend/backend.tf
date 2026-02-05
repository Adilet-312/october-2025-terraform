terraform {
  backend "s3" {
    bucket = "kaizen-adiletd"
    key    = "hello/terraform.tfstate"
    region = "us-east-1"
  }
}
