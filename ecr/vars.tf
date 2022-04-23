variable "container_registry" {
  default = "example"
  description = "Name of the ECR repository"
}

variable "image_tag_mutability" {
  default = "MUTABLE"
  description = "The mutability setting of the repository"
}

variable "image_scanning_configuration_on_push" {
  type = bool
  default = true
  description = "indicates whether images are scaned after being pushed to the repository"
}