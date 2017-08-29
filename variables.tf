variable "ssh_key_name" {
  description = "(Required) Name of AWS keypair that will be created."
}

variable "rsa_bits" {
  default     = "2048"
  description = "(Optional) When algorithm is \"RSA\", the size of the generated RSA key in bits. Defaults to \"2048\"."
}
