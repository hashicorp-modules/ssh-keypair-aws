resource "aws_key_pair" "main" {
  key_name   = "${var.environment_name}"
  public_key = "${file("${path.module}/id_rsa.pub")}"
}
