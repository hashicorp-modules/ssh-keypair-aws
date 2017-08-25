terraform {
  required_version = ">= 0.9.3"
}

module "ssh_keypair_data" {
  source = "../ssh-keypair-data"
  # source = "git@github.com:hashicorp-modules/ssh-keypair-data.git?f-keyname-output"

  private_key_filename = "${var.ssh_key_name}.pem"
}

resource "aws_key_pair" "main" {
  key_name   = "${var.ssh_key_name}"
  public_key = "${module.ssh_keypair_data.public_key_data}"
}
