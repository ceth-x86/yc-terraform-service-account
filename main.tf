terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

resource "yandex_iam_service_account" "sa" {
  folder_id = var.folder_id
  name      = var.name
}

resource "yandex_resourcemanager_folder_iam_binding" "sa" {
  count     = length(var.roles)
  folder_id = var.folder_id

  role = var.roles[count.index]

  members = [
    "serviceAccount:${yandex_iam_service_account.sa.id}",
  ]
}
