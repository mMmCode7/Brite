variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "eu-west-2"
}

variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "public_subnet_ids" {
  description = "The IDs of the public subnets"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "The IDs of the private subnets"
  type        = list(string)
}

variable "azs" {
  description = "The availability zones to use for the subnets."
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  default     = "my-cluster"
}
