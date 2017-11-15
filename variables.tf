variable "provision" {
  default     = "true"
  description = "Override to prevent provisioning resources in this module, defaults to \"true\"."
}

variable "name" {
  default     = "ssh-keypair-aws"
  description = "(Optional) Name of AWS keypair that will be created, defaults to \"ssh-keypair-aws\" appended with random bytes."
}

variable "rsa_bits" {
  default     = "2048"
  description = "(Optional) When algorithm is \"RSA\", the size of the generated RSA key in bits. Defaults to \"2048\"."
}
