resource "aws_ecr_repository" "container_registry" {
  name = "${var.container_registry}"
  image_tag_mutability = "${var.image_tag_mutability}"

  image_scanning_configuration {
    scan_on_push = "${var.image_scanning_configuration_on_push}"
  }
} 