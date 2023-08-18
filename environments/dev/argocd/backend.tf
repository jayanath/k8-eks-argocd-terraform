terraform {
  backend "s3" {
    bucket = "eks-terraform-state-jay-9975"
    key    = "k8-demo-argocd.tfstate"
    region = "us-west-2"
  }
}