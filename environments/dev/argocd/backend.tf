terraform {
  backend "s3" {
    bucket = "k8-eks-argo-terraform-state-jay"
    key    = "k8-demo-argocd.tfstate"
    region = "us-west-2"
  }
}