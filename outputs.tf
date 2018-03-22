output "algorithm" {
  value = "${module.tls_private_key.algorithm}"
}

output "private_key_name" {
  value = "${module.tls_private_key.private_key_name}"
}

output "private_key_filename" {
  value = "${module.tls_private_key.private_key_filename}"
}

output "private_key_pem" {
  value = "${module.tls_private_key.private_key_pem}"
}

output "public_key_pem" {
  value = "${module.tls_private_key.public_key_pem}"
}

output "public_key_openssh" {
  value = "${module.tls_private_key.public_key_openssh}"
}

output "name" {
  value = "${element(concat(aws_key_pair.main.*.key_name, list("")), 0)}" # TODO: Workaround for issue #11210
}
