resource "aws_kms_alias" "this" {
  name          = "alias/itsre/${var.alias_name}"
  target_key_id = aws_kms_key.this.key_id
}
