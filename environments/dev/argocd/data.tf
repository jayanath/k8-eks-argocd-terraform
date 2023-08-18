data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = "eks-terraform-state-jay-9975"
    key    = "k8-demo-eks.tfstate"
    region = "us-west-2"
  }
}

data "kubectl_file_documents" "namespace" {
  content = file("${path.module}/manifests/namespace.yaml")
}

data "kubectl_file_documents" "argocd" {
  content = file("${path.module}/manifests/install.yaml")
}

data "kubectl_file_documents" "grpc" {
  content = file("${path.module}/manifests/service-grpc.yaml")
}

data "kubectl_file_documents" "ingress" {
  content = file("${path.module}/manifests/ingress.yaml")
}

data "kubectl_file_documents" "repos" {
  content = file("${path.module}/manifests/app-repos.yaml")
}

data "kubectl_file_documents" "appset" {
  content = file("${path.module}/manifests/app-set.yaml")
}
