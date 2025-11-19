    terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "3.3.0"
    }
  }

  required_version = ">= 1.5.7"
}

provider "linode" {
  token = var.linode_token
  api_version = "v4beta"
}