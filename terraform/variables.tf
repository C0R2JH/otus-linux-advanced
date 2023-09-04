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
variable "cpu_count" {
  type        = string
  default     = "2"
  description = "Numbers of CPU, count"
}
variable "ram_count" {
  type        = string
  default     = "8"
  description = "RAM, GB"
}
variable "get_ubuntu_image" {
  type        = string
  default     = "ubuntu-1804-lts"
  description = "Default Ubuntu OS image id"
}
variable "ipv4_cidr_blocks" {
  type    = list(any)
  default = ["192.168.10.0/24"]
}

