variable "aws_region" {
  default = "us-east-1"
}

variable "eks_cluster_name" {
  default = "hello-world-cluster"
}

variable "cognito_user_pool_name" {
  default = "hello-world-auth"
}