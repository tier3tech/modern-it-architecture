# Create TXT records
resource "cloudflare_record" "txt_records" {
  count   = length(var.verification_records.txt_record)
  zone_id = var.zone_id
  name    = var.verification_records.txt_record[count.index].name
  type    = "TXT"
  value   = var.verification_records.txt_record[count.index].value
}

# Create MX records (if any exist)
resource "cloudflare_record" "mx_records" {
  count    = length(var.verification_records.mx_record)
  zone_id  = var.zone_id
  name     = var.verification_records.mx_record[count.index].name
  type     = "MX"
  value    = var.verification_records.mx_record[count.index].value
  priority = var.verification_records.mx_record[count.index].priority
}
