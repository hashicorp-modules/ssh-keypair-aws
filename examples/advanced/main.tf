module "ssh_keypair_aws" {
  # source = "github.com/hashicorp-modules/ssh-keypair-aws"
  source = "../../../ssh-keypair-aws"

  create    = "${var.create}"
  name      = "${var.name}"
  rsa_bits  = "${var.rsa_bits}"
}
