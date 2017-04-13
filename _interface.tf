variable "environment_name" {
  type = "string"
}

output "private_key_data" {
  value = "${module.ssh_key_data.private_key_data}"
}

output "ssh_key_name" {
  value = "${aws_key_pair.main.key_name}"
}
