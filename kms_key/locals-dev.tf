locals {
  keys_map_dev = tomap({
    "ebs" = {
      alias_name = "kms-alias-ebs"
    }
    "efs" = {}
    "cloudwatch" = {}
    "s3" = {}
  })
}