variable "folder_id" {
  description = "Folder that the DNS zone belongs to"
  type        = string
}

variable "zone" {
  type        = string
  description = "The DNS name of this zone"
}

variable "name" {
  type        = string
  description = "User assigned name of the DNS zone"
}

variable "description" {
  type        = string
  description = "Description of the DNS zone"
}

variable "recordset" {
  description = "List of DNS Recordset"
  type = list(object({
    name = string
    type = string
    ttl  = string
    data = list(string)
  }))
  default = []
}
