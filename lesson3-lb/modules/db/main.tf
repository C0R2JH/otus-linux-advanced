terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.01"
}

resource "yandex_compute_instance" "db" {
  name     = "${var.project}-db"
  hostname = "${var.project}-db"
  resources {
    cores  = var.cpu_count
    memory = var.ram_count
  }
  boot_disk {
    initialize_params {
      image_id = var.get_ubuntu_image
    }
  }
  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }
  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}