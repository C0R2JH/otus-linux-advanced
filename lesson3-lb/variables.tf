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
  default = "otus-c0r2jh-lesson3"
}
variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "private_key_path" {
  description = "Path to private key used for provisioner"
}
variable "get_ubuntu_image" {
  type        = string
  default     = "ubuntu-1804-lts"
  description = "Default Ubuntu OS image id"
}