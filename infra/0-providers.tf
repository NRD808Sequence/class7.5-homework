# Defines providers for hashicorplorcal and hashicorp/google
# Google procider is used to create resource in GCP, local provider creates local files on our machine.

terraform {
  required_providers {
    google = {                                  # https://registry.terraform.io/providers/hashicorp/google/latest
      source  = "hashicorp/google"
      version = "~> 7.0" 
    }
    local = {                                   # https://registry.terraform.io/providers/hashicorp/local/latest
        source = "hashicorp/local"
        version = "~> 2.0"
    }
  }
}


provider "google" {
  project = "seir-1-490220"
  region  = "us-central1"
}
# Gogole provider configured for my project.