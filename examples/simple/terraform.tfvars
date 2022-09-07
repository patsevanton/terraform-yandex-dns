folder_id   = "xxxxxxxxxxxxxxxxxxxx"
name        = "my-dns"
description = "My DNS"
zone        = "my.local."

recordset = [
  {
    name = "one"
    type = "A"
    ttl  = 600
    data = ["10.0.0.1"]
  },
  {
    name = "two"
    type = "A"
    ttl  = 600
    data = ["10.0.0.2"]
  },
  {
    name = ""
    type = "TXT"
    ttl  = 600
    data = "v=DMARC1;p=none;sp=quarantine; pct=100;rua=mailto:rep@example.com;"
  }
]
