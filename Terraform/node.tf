resource "google_container_cluster" "primary" {
  project                  = var.gcp_project
  name                     = "primary"
  location                 = "us-central1-a"
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = google_compute_network.kubernetes.self_link
  subnetwork               = google_compute_subnetwork.private.self_link
  logging_service          = "logging.googleapis.com/kubernetes"
  monitoring_service       = "monitoring.googleapis.com/kubernetes"
  networking_mode          = "VPC_NATIVE"
  # Optional, if you want multi-zonal cluster
  node_locations = [
    "us-central1-b"
  ]








  # Get the credentials 
resource "null_resource" "get-credentials" {

  depends_on = [google_container_cluster.primary]

  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials primary --zone us-central1-a --project ${var.gcp_project}"
  }
}
