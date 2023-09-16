#auth_yandex
variable "service_account_key_file" {
  type        = string
  description = "Key .json"
}
variable "cloud_id" {
  type        = string
  description = "Default cloud-id"
}
variable "folder_id" {
  type        = string
  description = "Default folder-id"
}
variable "zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Default zone"
}
variable "project" {
  type    = string
  default = "otus-c0r2jh"
}

#vm_settings


