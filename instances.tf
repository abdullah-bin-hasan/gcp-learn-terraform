resource "google_compute_instance" "terraform" {
  project      = "qwiklabs-gcp-03-467f37b36dd9"
  name         = "terraform"
  machine_type = "e2-medium"
  zone         = "us-east1-d"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}