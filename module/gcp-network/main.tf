resource "google_compute_network" "vpc_network" {
  name                    = var.vpc-name
  auto_create_subnetworks = var.auto-network
}

resource "google_compute_subnetwork" "us-central" {
  name          = var.subnet-name-us
  ip_cidr_range = var.ip-us-subnet
  region        = var.subnet-us-region
  network       = google_compute_network.vpc_network.id 
}

resource "google_compute_subnetwork" "asia-east" {
  name          = var.subnet-name-asia
  ip_cidr_range = var.ip-asia-subnet
  region        = var.subnet-asia-region
  network       = google_compute_network.vpc_network.id 
}

###Criacao das regras de firewall
resource "google_compute_firewall" "fw" {
  name    = var.fw-name
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "22"]
  }
}