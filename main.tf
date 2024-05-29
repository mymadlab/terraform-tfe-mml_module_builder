module "tfe_module_manager" {
  source  = "app.terraform.io/mymadlab/mml_module_manager/tfe"
  version = "~> 0.1.0"

  module_name       = var.name
  tfe_org           = var.tfe_org
  vcs_provider_name = var.vcs_provider_name
  github_org        = var.github_org

}

module "github_repository_manager" {
  source  = "app.terraform.io/mymadlab/mml_repository_manager/github"
  version = "~> 0.1.0"

  repo_name   = var.name
  description = var.description
  visibility  = var.visibility
  wiki        = var.wiki
  repo_type   = "module"
  product     = "terraform"

  depends_on = [ module.tfe_module_manager.module ]

}
