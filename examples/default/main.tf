module "ssh_keypair_aws" {
  source = "../../../ssh-keypair-aws"
  # source = "git@github.com:hashicorp-modules/ssh-keypair-aws.git?f-add-private-key-filename-output"

  ssh_key_name = "${var.ssh_key_name}"
}
