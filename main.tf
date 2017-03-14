variable "environment_name" {
  default = "ssh-keypair"
}

module "ssh_key" {
  source = "./terraform"

  environment_name = "${var.environment_name}"
}
