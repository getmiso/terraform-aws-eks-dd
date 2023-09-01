terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.13"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 1.16.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 1.0"
    }
  }
}