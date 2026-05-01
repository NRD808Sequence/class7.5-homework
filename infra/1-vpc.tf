# my vpc network configuration
# example used from the Terraform registry: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
# specifically the "basic" VPC + subnetwork example

resource "google_compute_network" "week7_vpc" {
  project                 = "seir-1-490220"
  name                    = "week7-vpc"
  auto_create_subnetworks = false # set to true by default, we want to create our own subnets, to sthis to false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "week7_subnet" {
  name          = "week7-subnetwork"
  ip_cidr_range = "10.202.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.week7_vpc.id
  secondary_ip_range {
    range_name    = "week7-secondary-range"
    ip_cidr_range = "10.242.10.0/24"
  }
}

# our subnet configuration