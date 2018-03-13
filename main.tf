terraform {
  required_version = ">= 0.9.3"
}

module "tls_private_key" {
  source = "github.com/hashicorp-modules/tls-private-key?ref=f-refactor"

  count     = "${var.count}"
  name      = "${var.name}"
  rsa_bits  = "${var.rsa_bits}"
}

resource "aws_key_pair" "main" {
  count = "${var.count}"

  key_name   = "${element(module.tls_private_key.private_key_name, count.index)}"
  public_key = "${element(module.tls_private_key.public_key_openssh, count.index)}"
}
