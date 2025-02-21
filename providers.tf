terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.28"  # You can adjust to latest
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "azuread" {
  # We'll configure authentication via environment variables or CLI later
}

provider "cloudflare" {
  # We'll set CLOUDFLARE_API_TOKEN environment variable later
}
