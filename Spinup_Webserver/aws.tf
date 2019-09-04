resource "aws_key_pair" "prep-key"{
key_name = "prep-key"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDdOvRissw7hFatMDPg0+MNlJhLaZDXaHynj/5+2EOBSX7OHOg1fBrw0CJ9V4N3lyJ2UJUQddtDc4uDjZoKww7q9hQsvC8RMGvIzNtQaRL+/pOlg3E3s31MK1dqsFat0MswT+iGwK+h2cpAPvE8ZfydHRYnrDxCRAyPZVrnyAbdy5SLariwRFhW3ELQVHXkYvg6NcRyCjBb2smSvDbCvZWI/fGL7xfp0TS9c6EE8jNFlqzU0Cl/pxWXnwXuxRtV7sYYykUIFpc5vmkLhF+M7pt0Ir/KyuN6RyTBEav6qF3Zy+fLETu5wwbiDglfeSR86Do5CAUdwXVAj36/uIcps8u7 root@ip-10-0-0-194"
}
resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.xlarge"
  key_name = "${aws_key_pair.prep-key.key_name}"
  tags = {
    Name = "preparatoryDemoWebServer"
  }
  # the VPC subnet
subnet_id = "${var.SUBNET_ID}"
vpc_security_group_ids = ["${var.SECURITY_GROUP_ID1}"]
associate_public_ip_address = "${var.PUB_IP}"
#aws_iam_instance_profile = "${var.ROLE_NAME}"
}
