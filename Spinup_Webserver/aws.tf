provider "aws" {
  profile    = "default"
  region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  tags{
  Name = "Test webserverW
  }
  
}