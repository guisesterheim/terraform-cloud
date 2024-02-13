resource "aws_ssm_parameter" "param" {
  name  = "/dev/param"
  type  = "String"
  value = "test"
}

resource "aws_ssm_parameter" "param2" {
  name  = "/dev/param2"
  type  = "String"
  value = "test2"
}