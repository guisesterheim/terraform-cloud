locals {
  keys_map_dev = tomap({
    dev = {
      "ebs" = {
        alias_name = "kms-${var.environment}-ebs"
      }
      "efs" = {}
    }
  })
}