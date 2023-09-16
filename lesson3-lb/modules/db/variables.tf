variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "private_key_path" {
  description = "Path to private key used for provisioner"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "project" {
  type    = string
  default = "otus-c0r2jh-lesson3"
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