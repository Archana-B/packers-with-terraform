variable "ACCESS_KEY" {}
variable "SECRET_KEY" {}
variable "AMI_ID" {}
variable "KEY_NAME" {}

provider "aws" {
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
  region = "eu-west-1"
}

resource "aws_instance" "web" {
  ami = var.AMI_ID
  instance_type = "t2.micro"
  key_name = var.KEY_NAME

  tags = {
    Name = "UbuntuWithDocker"
  }
}