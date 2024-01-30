variable "aws_region" {
  description = "Region where to run this TF in"
  type        = string
}

variable "environment" {
  description = "Environment to be used for this run"
  type        = string
}

variable "alias_name" {
  description = "Alias to apply to the key"
  type        = string
}
