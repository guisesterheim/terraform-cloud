locals {
  keys_map_prod = tomap({
    "ebs" = {
      alias_name = "kms-${var.environment}-ebs"
    }
    "efs"        = {}
    "cloudwatch" = {}
  })
}