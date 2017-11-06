module "ssh_keypair_aws" {
  source = "../../../ssh-keypair-aws"
  # source = "git@github.com:hashicorp-modules/ssh-keypair-aws.git?ref=f-refactor"

  provision = "${var.provision}"
  name      = "${var.name}"
  rsa_bits  = "${var.rsa_bits}"
}
