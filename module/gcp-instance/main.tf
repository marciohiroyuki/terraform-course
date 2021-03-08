resource "google_compute_instance" "vm1" {
  name         = var.vm-name
  machine_type = var.machine_type
  zone         = var.zone
  allow_stopping_for_update = var.allow-stop
  metadata_startup_script = var.exec-command

  tags = ["terraform", "projeto1", "us-central1-a"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = var.subnetwork

    access_config {
      // Ephemeral IP
    }
  } 

  metadata = {
    ssh-keys = var.ssh-key
  }
  
}