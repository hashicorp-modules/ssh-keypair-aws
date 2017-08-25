output "private_key_data" {
  value = "${module.ssh_keypair_aws.private_key_pem}"
}

output "private_key_filename" {
  value = "${module.ssh_keypair_aws.private_key_filename}"
}

output "ssh_key_name" {
  value = "${module.ssh_keypair_aws.key_name}"
}
