output "ecr_repository_url" {
  description = "The URL of the ECR repository."
  value       = aws_ecr_repository.brite_app.repository_url
}

output "ecr_repository_arn" {
  description = "The ARN of the ECR repository."
  value       = aws_ecr_repository.brite_app.arn
}
