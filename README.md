# ssh-keypair-aws

Creates an AWS SSH keypair.

## Requirements

The following environment variables must be set:

```
AWS_DEFAULT_REGION
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

## Usage

```
module "ssh_key" {
  source           = "git@github.com:hashicorp-modules/ssh-keypair-aws.git//terraform"
  environment_name = "${var.environment_name}"
}

resource "aws_instance" "bastion" {
  ...
  key_name      = "${module.ssh_key.key_name}"
  ...
}
```
