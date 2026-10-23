terraform {
  required_version = ">= 1.16.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.65.0"
    }
  }

  cloud {
    organization = "awesome-tools"
    workspaces {
      name = "hcp-lab"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    # anytime this provider is used, these default tags will be applied to all resources created by this provider
    tags = {
      ManagedBy = "Terraform"
      Project   = "Terraform Lab"
    }
  }
}
