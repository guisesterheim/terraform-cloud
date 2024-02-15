locals {
  keys_map_prod = tomap({
    "ebs" = {
      alias_name = "kms-alias-prod-ebs"
    }
    "efs"        = {}
    "cloudwatch" = {}
  })
}