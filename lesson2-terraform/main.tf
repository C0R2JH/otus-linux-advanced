data "yandex_compute_image" "get_ubuntu_image" {
  family = var.get_ubuntu_image
}

resource "yandex_compute_instance" "vm" {
  name = "${var.project}-vm"
  resources {
    cores  = var.cpu_count
    memory = var.ram_count
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.get_ubuntu_image.id
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet.id
    nat       = true
  }
  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    host        = yandex_compute_instance.vm.network_interface.0.nat_ip_address
  }
  provisioner "remote-exec" {
    inline = ["echo 'Start'"]

  }
  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.network_interface.0.nat_ip_address},' --private-key ~/.ssh/id_rsa --user ubuntu provision.yml"
  }
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
