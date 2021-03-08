output "subnet-us-self-link" {
    value = google_compute_subnetwork.us-central.self_link
}
output "subnet-asia-self-link" {
    value = google_compute_subnetwork.asia-east.self_link
}