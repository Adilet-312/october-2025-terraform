resource "aws_key_pair" "deployer" {
  key_name   = "my-laptop-key"
  public_key = file("~/.ssh/id_rsa.pub")
}