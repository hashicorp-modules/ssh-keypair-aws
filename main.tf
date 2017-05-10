module "ssh-keypair-data" {
  source               = "git@github.com:hashicorp-modules/ssh-keypair-data.git"
  private_key_filename = "${var.ssh_key_name}.pem"
}

resource "aws_key_pair" "main" {
  key_name   = "${var.ssh_key_name}"
  public_key = "${module.ssh-keypair-data.public_key_data}"
}
