variable "create" {
  description = "Create Module, defaults to true."
  default     = true
}

variable "name" {
  description = "(Optional) Name of AWS keypair that will be created, defaults to \"ssh-keypair-aws\" appended with random bytes."
  default     = "ssh-keypair-aws"
}

variable "rsa_bits" {
  description = "(Optional) When algorithm is \"RSA\", the size of the generated RSA key in bits. Defaults to \"2048\"."
  default     = "2048"
}
