locals {
  keys_map_qa = tomap({
    "ebs" = {
      alias_name = "qa-ebs"
    }
    "efs" = {}
  })
}