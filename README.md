# Yandex.Cloud DNS zones module

Creates a DNS zone in Yandex.Cloud.

## Basic example

To create a DNS zone `my.local.` in Yandex.Cloud folder with id `xxx000xxx000xxx000xx`:

```hcl
module "dns" {
  source = "github.com/patsevanton/terraform-yandex-dns.git//.?ref=v1.0.0"

  folder_id   = "xxx000xxx000xxx000xx"

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
}
```

## Requirements

| Name                                            | Version |
|-------------------------------------------------|---------|
| [terraform](https://www.terraform.io/downloads) | >= 1.2  |

## Providers

| Name                                                                                    | Version |
|-----------------------------------------------------------------------------------------|---------|
| [yandex-cloud](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs) | >= 0.85 |

## Modules

No modules.

## Resources

| Name                                                                                                                           | Type     |
|--------------------------------------------------------------------------------------------------------------------------------|----------|
| [yandex_dns_zone](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/yandex_dns_zone)           | resource |
| [yandex_dns_recordset](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/yandex_dns_recordset) | resource |
## Inputs

| Name                 | Description                    | Type                                                                             | Required | Default |
|----------------------|--------------------------------|----------------------------------------------------------------------------------|:--------:|---------|
| folder_id            | Folder that the DNS belongs to | `string`                                                                         |   yes    |         |
| labels               | Labels                         | `map(any)`                                                                       |    no    | `{}`    |
| name                 | Zone name                      | `string`                                                                         |   yes    |         |
| private\_network\_id | Private network ID             | `string`                                                                         |   yes    |         |
| recordset            | List of DNS records            | `list(object({ name = string type = string ttl = string data = list(string) }))` |    no    | `[]`    |
| zone                 | Zone : example.com.            | `string`                                                                         |   yes    |         |


## Outputs

| Name          | Description          |
|---------------|----------------------|
| id            | Local ID of DNS zone |
| zone          | Local DNS zone name  |
| record\_ids   | ID of DNS record     |
| record\_names | Name of DNS record   |

