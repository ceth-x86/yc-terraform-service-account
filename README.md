# yc-terraform-service-account

Terraform module to create Yandex Cloud Service Account

Example:

```
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
    folder_id = "folder-id"
    zone = "ru-central1-a"
    token = "token"
}

module "service-account" {
    source = "github.com/demas/yc-terraform-service-account"

    folder_id = "folder-id"
    name = "demosa"
    roles = ["editor", "viewer", "storage.admin"]
}
```
