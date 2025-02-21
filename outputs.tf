output "azuread_domain_name" {
  description = "The domain name in Azure AD."
  value       = module.azuread_domain.domain_name
}

output "cloudflare_txt_records_created" {
  description = "TXT records created in Cloudflare."
  value       = module.cloudflare_dns.txt_records_created
}
