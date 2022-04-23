output "registry_id" {
  value = aws_ecr_repository.container_registry.registry_id
  description = "The account ID of the registry"
}

output "repository_url" {
  value = aws_ecr_repository.container_registry.repository_url
}