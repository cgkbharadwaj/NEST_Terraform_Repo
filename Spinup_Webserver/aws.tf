resource "aws_key_pair" "prep-key"{
key_name = "prep-key"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDT5E3xMnLIldimZ6jQOp6ySkhGsfqXmfmnhou9CS+sbRsmtvyroFwgxYM2VwQ62U1N7lDTw/IssL4KndRMUnnh/4Ur8LodBfP08uqV30AxJValYmbOEaCLoRVQA6Xm9dtBRY3vzP4oxtAe3kF4teimvyqX2qVk/oMGabmb6g78Ztgh1DRu2bKRcRuJWycwrqb6SXw9nY6LPflM5xQOZYbq4nq3qPRZz8xKKEp9dL90SYT/e9W7Mzq/0WG/87Vxf49I+XGWToZsMhQT7qhaMeAwQuCVjcAIovD/0c6zogntdysliadSs1YkaEgXHijm8mzm6w/XiIDRvCn99A9HSLc/ root@ip-10-0-0-206"
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
