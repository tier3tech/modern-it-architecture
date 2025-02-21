variable "azuread_domain_name" {
  type        = string
  description = "The custom domain to add/verify in Azure AD."
}

variable "cloudflare_zone_id" {
  type        = string
  description = "The Cloudflare zone ID for the domain."
}
