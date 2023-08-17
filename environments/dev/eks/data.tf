data "aws_caller_identity" "current" {}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "eks-terraform-state-jay-9975"
    key    = "k8-demo-vpc.tfstate"
    region = "us-west-2"
  }
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}