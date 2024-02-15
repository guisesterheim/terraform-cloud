terraform {
  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "lab-sesterhg"

    workspaces {
      project = "challenge"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment      = "dev"
      Managed-by       = "Terraform"
      GitHubRepository = "https://github.com/guisesterheim/terraform-cloud"
    }
  }
}