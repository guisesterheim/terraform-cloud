locals {
  keys_map_prod = tomap({
    prod = {
      "ebs" = {
        alias_name = "kms-${var.environment}-ebs"
      }
      "efs"        = {}
      "cloudwatch" = {}
    }
  })
}