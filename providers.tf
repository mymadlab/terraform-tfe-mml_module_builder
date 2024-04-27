terraform {
  cloud {
    organization = "mymadlab"
    workspaces {
      tags = ["infra", "module"]
    }
  }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.52.0"
    }
    github = {
      source  = "integrations/github"
      version = ">= 6.0.1"
    }
  }

  required_version = ">= 1.7.5"
}
