module "ssh-keypair-data" {
  source = "git@github.com:hashicorp-modules/ssh-keypair-data.git?ref=dan-refactor"
}

resource "aws_key_pair" "main" {
  key_name   = "${var.ssh_key_name}"
  public_key = "${module.ssh-keypair-data.public_key_data}"
}
