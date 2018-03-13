module "ssh_keypair_aws" {
  # source = "github.com/hashicorp-modules/ssh-keypair-aws?ref=f-refactor"
  source = "../../../ssh-keypair-aws"

  count     = "${var.count}"
  name      = "${var.name}"
  rsa_bits  = "${var.rsa_bits}"
}
