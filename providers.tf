terraform {
  cloud {
    organization = "mymadlab"
    workspaces {
      tags = ["facility", "infra"]
    }
  }

  required_providers {
    provider1 = {
      source  = "owner/provider1"
      version = "#.#.#"
    }
  }
}

provider "provider1" {
  
}
