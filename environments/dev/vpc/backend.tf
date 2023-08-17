terraform {
  backend "s3" {
    bucket = "eks-terraform-state-jay-9975"
    key    = "k8-demo-vpc.tfstate"
    region = "us-west-2"
  }
}