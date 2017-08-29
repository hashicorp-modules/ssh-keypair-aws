output "_README" {
  value = <<README
A private RSA key named "${module.ssh_keypair_aws.private_key_filename}" has been generated and downloaded locally. The file permissions have been changed to 0600 so the key can be used immediately for SSH or scp.

Run the below command to add this private key to the list maintained by ssh-agent so you're not prompted for it when using SSH or scp to connect to hosts with your public key.

  ssh-add ${module.ssh_keypair_aws.private_key_filename}

The public part of the key loaded into the agent ("public_key_pem" output) must be placed on the target system in ~/.ssh/authorized_keys.

To SSH into a host using this private key, you can use the below command after updating USER@HOST.

  ssh -i ${module.ssh_keypair_aws.private_key_filename} USER@HOST

In order to force the generation of a new key, the private key instance can be "tainted" using the below command.

  terraform taint -module=ssh_keypair_aws.tls_private_key tls_private_key.main
README
}

output "algorithm" {
  value = "${module.ssh_keypair_aws.algorithm}"
}

output "private_key_pem" {
  value = "${module.ssh_keypair_aws.private_key_pem}"
}

output "private_key_filename" {
  value = "${module.ssh_keypair_aws.private_key_filename}"
}

output "public_key_pem" {
  value = "${module.ssh_keypair_aws.public_key_pem}"
}

output "public_key_openssh" {
  value = "${module.ssh_keypair_aws.public_key_openssh}"
}

output "ssh_key_name" {
  value = "${module.ssh_keypair_aws.ssh_key_name}"
}
