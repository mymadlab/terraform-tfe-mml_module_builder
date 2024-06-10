# mml_module_builder

## Description

Responsible for building workspaces with a link repository

## Usage

```HCL
module "terraform_tfe_mml_module_builder" {
  source  = "app.terraform.io/mymadlab/mml_module_builder/tfe"
  version = "~> 0.2.0"

  name              = "terraform-provider-name_of_the_module"
  description       = "Description of the module being created"
  tfe_org           = "name_of_TFE_org"
  vcs_provider_name = "my_vcs_provider_name_here"
  github_org        = "name_of_github_org"

}
```

## Dependencies

- [hashicorp/tfe](https://registry.terraform.io/providers/hashicorp/tfe/latest): >=0.52.0
- [integrations/github](https://registry.terraform.io/providers/integrations/github/latest): >=6.2.0
