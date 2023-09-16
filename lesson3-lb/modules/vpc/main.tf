terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.01"
}

resource "yandex_vpc_network" "network" {
  name = "${var.project}-network"
}

resource "yandex_vpc_subnet" "subnet" {
  name           = "${var.project}-subnet"
  zone           = var.zone
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = var.ipv4_cidr_blocks
}
