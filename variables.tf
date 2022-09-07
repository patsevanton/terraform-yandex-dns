variable "folder_id" {
  type        = string
  description = "Yandex.Cloud folder ID"
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

variable "labels" {
  type        = map(any)
  default     = {}
  description = "A set of key/value label pairs to assign to the DNS zone"
}

variable "private_network_id" {
  type        = string
  description = "Private network ID"
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
