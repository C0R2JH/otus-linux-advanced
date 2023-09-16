variable "project" {
  type    = string
  default = "otus-c0r2jh-lesson3"
}

variable "zone" {
  type        = string
  default     = "ru-central1-a"
}

variable "ipv4_cidr_blocks" {
  type    = list(any)
  default = ["192.168.10.0/24"]
}