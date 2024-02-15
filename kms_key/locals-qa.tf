locals {
  keys_map_qa = tomap({
    qa = {
      "ebs" = {
        alias_name = "qa-ebs"
      }
      "efs" = {}
    }
  })
}