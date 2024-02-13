resource "aws_ssm_parameter" "param" {
  name  = "/dev/param"
  type  = "String"
  value = "test"
}