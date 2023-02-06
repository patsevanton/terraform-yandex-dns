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

variable "public" {
  default = true
  description = "The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources."
}

variable "private_networks" {
  default = ""
  description = "For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from."
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
