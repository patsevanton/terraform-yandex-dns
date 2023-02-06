resource "yandex_dns_zone" "main" {
  folder_id        = var.folder_id
  name             = var.name
  description      = var.description
  zone             = var.zone
  labels           = var.labels
  public           = var.public
  private_networks = var.public != true ? var.private_networks : null
}

resource "yandex_dns_recordset" "main" {
  count = length(var.recordset)

  zone_id = yandex_dns_zone.main.id
  name    = lookup(var.recordset[count.index], "name")
  type    = lookup(var.recordset[count.index], "type")
  ttl     = lookup(var.recordset[count.index], "ttl")
  data    = lookup(var.recordset[count.index], "data")
}
