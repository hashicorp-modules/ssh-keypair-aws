variable "environment_name" {
  default = "vpc-foundation"
}

output "ssh_key_name" {
  value = "${aws_key_pair.main.key_name}"
}
