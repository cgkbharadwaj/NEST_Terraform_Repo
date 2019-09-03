provider "aws" {
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
    assume_role {
    role_arn     = "arn:aws:iam::736261142003:role/EC2Admin"
    session_name = "SESSION_NAME"
    external_id  = "EXTERNAL_ID"
  }
}
