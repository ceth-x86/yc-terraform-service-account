variable "folder_id" {
  type        = string

  description = "Folder ID to create service account."
}

variable "name" {
  type        = string

  description = "Service Account name."
}

variable "roles" {
  type        = list(string)

  description = "Service Account roles."
}
