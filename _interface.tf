# Required variables
variable "ssh_key_name" {
  description = "AWS key pair name that will be created"
}

# Outputs
output "private_key_data" {
  value = "${module.ssh-keypair-data.private_key_pem}"
}

output "ssh_key_name" {
  value = "${aws_key_pair.main.key_name}"
}
