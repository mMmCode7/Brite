variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "us-west-2"
}

variable "vpc_name" {
  description = "The name of the VPC."
  default     = "main-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "The CIDR blocks for the public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "The CIDR blocks for the private subnets."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "azs" {
  description = "The availability zones to use for the subnets."
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}
