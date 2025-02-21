########################################
# Azure AD Domain Module
########################################
module "azuread_domain" {
  source = "./modules/azuread-domain"

  # We'll pass in a variable for the custom domain name.
  domain_name = var.azuread_domain_name
}

########################################
# Cloudflare DNS Module
########################################
module "cloudflare_dns" {
  source = "./modules/cloudflare-dns"

  # The zone ID for Cloudflare
  zone_id = var.cloudflare_zone_id

  # Pull verification records from azuread_domain outputs
  verification_records = module.azuread_domain.verification_records
}
