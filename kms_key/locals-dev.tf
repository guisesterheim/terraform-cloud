locals {
  keys_map_dev = tomap({
    "ebs" = {
      alias_name = "kms-${var.environment}-ebs"
    }
    "efs" = {}
  })
}