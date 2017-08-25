output "public_key_data" {
  value = "${module.ssh_keypair_data.public_key_data}"
}

output "private_key_filename" {
  value = "${module.ssh_keypair_data.private_key_filename}"
}

output "ssh_key_name" {
  value = "${aws_key_pair.main.key_name}"
}
