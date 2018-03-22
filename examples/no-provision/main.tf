module "ssh_keypair_aws" {
  # source = "github.com/hashicorp-modules/ssh-keypair-aws?ref=f-refactor"
  source = "../../../ssh-keypair-aws"

  create = false
}
