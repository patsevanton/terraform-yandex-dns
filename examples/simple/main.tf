module "dns" {
  source = "../"

  folder_id   = var.folder_id
  name        = var.name
  description = var.description
  zone        = var.zone
  recordset   = var.recordset
}
