terraform {
  cloud {
    organization = "hosts"

    workspaces {
      tags = ["ssh"]
    }
  }
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.3.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.12.0"
    }
  }
}
