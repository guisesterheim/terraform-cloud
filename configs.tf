terraform {
  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "lab-guilherme"

    workspaces {
      name = "terraform-cloud"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Environment            = "dev"
      Managed-by        = "Terraform"
      GitHubRepository         = "https://github.com/guisesterheim/terraform-cloud"
    }
  }
}