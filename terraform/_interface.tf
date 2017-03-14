variable "environment_name" {
  default = "vpc-foundation"
}

output "key_name" {
  value = "${aws_key_pair.main.key_name}"
}
