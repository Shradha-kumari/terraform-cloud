resource "google_compute_network" "vpc_network" {
  name                    = "gke-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "gke_subnet" {
  name          = "gke-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id

  secondary_ip_range {
    range_name    = "gke-pods"
    ip_cidr_range = "10.10.0.0/16"
  }

  secondary_ip_range {
    range_name    = "gke-services"
    ip_cidr_range = "10.20.0.0/20"
  }
}