terraform {
  cloud {
    organization = "mymadlab"
    workspaces {
      tags = ["facility", "infra"]
    }
  }

}
