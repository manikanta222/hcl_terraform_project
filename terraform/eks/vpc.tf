module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  name            = var.eks_cluster_name
  cidr            = "10.0.0.0/16"
  enable_nat_gateway = true

  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
}