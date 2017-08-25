output "public_key_data" {
  value = "${module.ssh_keypair_aws.public_key_data}"
}

output "private_key_filename" {
  value = "${module.ssh_keypair_aws.private_key_filename}"
}

output "ssh_key_name" {
  value = "${module.ssh_keypair_aws.ssh_key_name}"
}
