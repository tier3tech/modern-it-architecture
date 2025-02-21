resource "azuread_domain" "this" {
  domain_name = var.domain_name
  # This resource will show "Unverified" status until DNS records are set.
}

data "azuread_domain_service_configuration_records" "verification" {
  domain_name = azuread_domain.this.domain_name
}
