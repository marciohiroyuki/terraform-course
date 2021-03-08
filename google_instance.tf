resource "google_compute_instance" "vm1" {
  name         = var.vm-1
  machine_type = var.machine_type
  zone         = var.zone1
  allow_stopping_for_update = var.allow-stop
  metadata_startup_script = var.exec-command

  tags = ["terraform", "projeto1", "us-central1-a"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.us-central.id

    access_config {
      // Ephemeral IP
    }
  } 

  metadata = {
    ssh-keys = var.ssh-key
  }
  
}

resource "google_compute_instance" "vm2" {
  name         = var.vm-2
  machine_type = var.machine_type
  zone         = var.zone2
  allow_stopping_for_update = var.allow-stop
  metadata_startup_script = var.exec-command


  tags = ["terraform", "projeto1", "asia-east1-a"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.asia-east.id

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh-keys = var.ssh-key
  }
}