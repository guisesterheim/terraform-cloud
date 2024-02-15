locals {
  tags = {
    "owner"       = "guisesterhem"
    "environment" = var.environment
    "automation"  = "true"
    "criticality" = "essential"
    "ManagedBy"   = "Terraform"
    "GitHubRepo"  = "https://github.com/guisesterheim/terraform-cloud"
  }

  environment_dev = "dev"
  environment_prod = "prod"
  environment_qa = "qa"

  keys_to_create = var.environment == local.environment_dev ? local.keys_map_dev : (var.environment == local.environment_prod ? local.keys_map_prod : (var.environment == local.environment_qa ? local.keys_map_qa : {}))
}