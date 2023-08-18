terraform {
  backend "s3" {
    bucket = "eks-terraform-state-jay-9975"
    key    = "k8-demo-eks.tfstate"
    region = "us-west-2"
  }
}