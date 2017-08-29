terraform {
  required_version = ">= 0.9.3"
}

module "tls_private_key" {
  source = "../tls-private-key"
  # source = "git@github.com:hashicorp-modules/tls-private-key.git?f-refactor"

  private_key_filename = "${var.ssh_key_name}.pem"
  rsa_bits             = "${var.rsa_bits}"
}

resource "aws_key_pair" "main" {
  key_name   = "${var.ssh_key_name}"
  public_key = "${module.tls_private_key.public_key_openssh}"
}
