#ssh-keypair

Shared SSH key for use with hashi modules.

Usage:

```
module "ssh_key" {
  source = "git@github.com:hashicorp-modules/ssh-keypair.git//terraform"
  environment_name = "${var.environment_name}"     # defaults to vpc-foundation
}

resource "aws_instance" "bastion" {
  ...
  key_name      = "${module.ssh_key.key_name}"
  ...
}
```