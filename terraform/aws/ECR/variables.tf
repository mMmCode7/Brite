variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "eu-west-1"
}

variable "ecr_repository_name" {
  description = "The name of the ECR repository."
  default     = "brite_app"
}
