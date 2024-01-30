locals {
  tags = {
    "owner"       = "guisesterhem"
    "environment" = var.environment
    "automation"  = "true"
    "criticality" = "essential"
    "ManagedBy"   = "Terraform"
    "GitHubRepo"  = "https://github.com/guisesterheim/terraform-cloud"
  }

  keys_map = tomap({
    dev = {
      "ebs" = {
        alias_name = "kms-dev-ebs"
      }
      "efs" = {}
    },
    prod = {
      "ebs" = {
        alias_name = "kms-dev-ebs"
      }
      "efs"        = {}
      "cloudwatch" = {}
    }
  })
  keys_to_create = local.keys_map[var.environment]
}