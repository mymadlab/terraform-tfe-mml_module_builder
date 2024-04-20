output "tfe_modules" {
  description = "Map of the module with all it's information"
  value       = module.tfe_module_manager
}

output "module_repositories" {
  description = "Map of the github repo with all it's information"
  value       = module.github_repository_manager
}
