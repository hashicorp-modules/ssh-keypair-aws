module "ssh_key_data" {
  source = "git@github.com:hashicorp-modules/ssh-keypair-data.git//terraform"
}

resource "aws_key_pair" "main" {
  key_name   = "${var.environment_name}"
  public_key = "${module.ssh_key_data.public_key_data}"
}
