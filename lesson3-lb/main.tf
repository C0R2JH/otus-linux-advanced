data "yandex_compute_image" "get_ubuntu_image" {
  family = var.get_ubuntu_image
}

module "vpc" {
  source = "./modules/vpc"
  zone   = var.zone
}

module "db" {
  source           = "./modules/db"
  public_key_path  = var.public_key_path
  private_key_path = var.private_key_path
  get_ubuntu_image = data.yandex_compute_image.get_ubuntu_image.id
  subnet_id        = module.vpc.subnet_id
}