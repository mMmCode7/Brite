provider "aws" {
  region = var.aws_region
}

# Create ECR Repository
resource "aws_ecr_repository" "brite_app" {
  name                 = var.ecr_repository_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = var.ecr_repository_name
  }
}
