resource "aws_key_pair" "deployer" {
  key_name   = "terraform-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "kaizen-adiletd"
  force_destroy = true
}

resource "aws_s3_bucket" "example2" {
  bucket = "hello-kaizenad"
  force_destroy = true
}

resource "aws_s3_object" "object" {
  depends_on = [aws_s3_bucket.example]
  bucket = "kaizen-adiletd"
  key    = "main.tf"
  source = "main.tf"
}