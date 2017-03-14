variable "environment_name" {
  type = "string"
}

output "ssh_key_name" {
  value = "${aws_key_pair.main.key_name}"
}
