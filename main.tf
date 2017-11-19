terraform {
  required_version = ">= 0.9.3"
}

module "tls_private_key" {
  source = "git@github.com:hashicorp-modules/tls-private-key.git?f-refactor"

  provision = "${var.provision}"
  name      = "${var.name}"
  rsa_bits  = "${var.rsa_bits}"
}

resource "aws_key_pair" "main" {
  count = "${var.provision == "true" ? 1 : 0}"

  key_name   = "${module.tls_private_key.private_key_name}"
  public_key = "${module.tls_private_key.public_key_openssh}"
}
