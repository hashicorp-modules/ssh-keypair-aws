# AWS SSH Keypair Terraform Module

- Generates a secure RSA private key
- Encodes the private key as PEM
- Downloads the private locally and updates the local key file permission to 0600
- Creates an AWS SSH keypair

Checkout [examples](./examples) for fully functioning examples.

## Environment Variables

- `AWS_DEFAULT_REGION`
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

## Input Variables

- `create`: [Optional] Create Module, defaults to true.
- `name`: [Optional] Name of AWS keypair that will be created, defaults to "ssh-keypair-aws" appended with random bytes.
- `rsa_bits`: [Optional] When algorithm is "RSA", the size of the generated RSA key in bits. Defaults to "2048".

## Outputs

- `algorithm`: The algorithm that was selected for the key.
- `private_key_name`: The private key name.
- `private_key_filename`: The private key filename.
- `private_key_pem`: The private key data in PEM format.
- `public_key_pem`: The public key data in PEM format.
- `public_key_openssh`: The public key data in OpenSSH authorized_keys format, if the selected private key format is compatible. All RSA keys are supported, and ECDSA keys with curves "P256", "P384" and "P251" are supported. This attribute is empty if an incompatible ECDSA curve is selected.
- `name`: Name of AWS keypair.

## Submodules

- [TLS Private Key Terraform Module](https://github.com/hashicorp-modules/tls-private-key)

## Authors

HashiCorp Solutions Engineering Team.

## License

Mozilla Public License Version 2.0. See LICENSE for full details.
