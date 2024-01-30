locals {
  tags = {
    "owner"       = "guisesterhem"
    "environment" = var.environment
    "automation"  = "true"
    "criticality" = "essential"
    "ManagedBy"   = "Terraform"
    "GitHubRepo"  = "https://github.com/guisesterheim/terraform-cloud"
  }
}
