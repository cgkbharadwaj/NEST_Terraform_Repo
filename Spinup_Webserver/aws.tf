resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.xlarge"
  key_name = "${var.KEY_NAME}"
  tags = {
    Name = "preparatoryDemoWebServer"
  }
  # the VPC subnet
subnet_id = "${var.SUBNET_ID}"
vpc_security_group_ids = ["${var.SECURITY_GROUP_ID1}"]
associate_public_ip_address = "${var.PUB_IP}"
#aws_iam_instance_profile = "${var.ROLE_NAME}"
}
