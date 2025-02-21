output "txt_records_created" {
  description = "Names of the TXT records created in Cloudflare."
  value       = [for r in cloudflare_record.txt_records : r.name]
}

output "mx_records_created" {
  description = "Names of the MX records created in Cloudflare."
  value       = [for r in cloudflare_record.mx_records : r.name]
}
