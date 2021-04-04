provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
resource "yandex_compute_instance" "app" {
  count = var.count_of_instance
  name        = "reddit-app-${count.index}"
  platform_id = "standard-v1"
  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
      }
  connection {
    type  = "ssh"
    #host  = yandex_compute_instance.app[count.index].network_interface.0.nat_ip_address
    host  =          self.network_interface.0.nat_ip_address

    user  = "ubuntu"
    agent = false
    private_key = file(var.private_key)
  }
  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }
  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }

  resources {
    cores  = 2
    core_fraction = 5
    memory = 2

  }

  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = var.image_id
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = var.subnet_id
    nat       = true
  }
}
