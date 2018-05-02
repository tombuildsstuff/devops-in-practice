data "terraform_remote_state" "network" {
  backend = "s3"

  config {
    bucket = "terraform-state-prod"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "foo" {
  subnet_id = "${data.terraform_remote_state.vpc.subnet_id}"
}
