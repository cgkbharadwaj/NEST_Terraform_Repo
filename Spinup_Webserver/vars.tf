
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-1"
}
variable "SUBNET_ID" {
  default = "subnet-07a8f6fef09c1d4e0"
}
variable "SECURITY_GROUP_ID1" {
  default = "sg-0fe15e0fba50c3d84"
}
variable "PUB_IP" {
  default = "true"
}
# variable "SECURITY_GROUP_ID2" []{
# default = "subnet-07a8f6fef09c1d4e0"
# }
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-000c356ce8d6328ef"
  }
}
