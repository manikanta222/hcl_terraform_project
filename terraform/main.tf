provider "aws" {
  region = var.aws_region
}

module "eks" {
  source = "./eks"
}

module "cognito" {
  source = "./cognito"
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

output "cognito_user_pool_id" {
  value = module.cognito.user_pool_id
}