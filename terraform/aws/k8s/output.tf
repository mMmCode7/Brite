output "eks_cluster_name" {
  description = "The name of the EKS cluster."
  value       = aws_eks_cluster.main.name
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster."
  value       = aws_eks_cluster.main.endpoint
}

output "eks_cluster_security_group_id" {
  description = "The security group ID of the EKS cluster."
  value       = aws_security_group.eks_cluster.id
}

output "eks_worker_security_group_id" {
  description = "The security group ID of the EKS worker nodes."
  value       = aws_security_group.eks_workers.id
}
