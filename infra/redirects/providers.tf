terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 5"
    }
  }
}

provider "cloudflare" {}
