resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  tags = {
    Name = "testTag"
  }
  # the VPC subnet
subnet_id = "${var.SUBNET_ID}"
vpc_security_group_ids = ["${var.SECURITY_GROUP_ID1}"]
associate_public_ip_address = "${var.PUB_IP}"
}
