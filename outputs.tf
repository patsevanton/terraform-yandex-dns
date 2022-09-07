output "id" {
  description = "ID of a new DNS zone"
  value       = yandex_dns_zone.main.id
}

output "zone" {
  description = "Local DNS zone name"
  value       = yandex_dns_zone.main.zone
}

output "record_ids" {
  description = "IDs of DNS records"
  value       = yandex_dns_recordset.main[*].id
}

output "record_names" {
  description = "Names of DNS records"
  value       = yandex_dns_recordset.main[*].name
}
