output "domain_name" {
  description = "The domain name created in Azure AD."
  value       = azuread_domain.this.domain_name
}

output "verification_records" {
  description = "DNS records required to verify the domain in Azure AD."
  value       = data.azuread_domain_service_configuration_records.verification
}
