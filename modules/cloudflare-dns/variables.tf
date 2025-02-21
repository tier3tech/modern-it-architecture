variable "zone_id" {
  type        = string
  description = "The ID of the Cloudflare DNS zone (e.g., for authmax.xyz)."
}

variable "verification_records" {
  description = <<EOT
Collection of DNS records (TXT, MX, etc.) from Azure AD for verifying the domain.
We’ll assume it includes at least a txt_record list, but could also have mx_record, srv_record, etc.
EOT
  
  # For simplicity, let's define it as an object matching the data source from azuread_domain_service_configuration_records
  type = object({
    txt_record = list(object({
      name  = string
      value = string
    }))
    mx_record = optional(list(object({
      name     = string
      value    = string
      priority = number
    })), [])
    # You can add more (srv_record, etc.) if needed
  })
}
