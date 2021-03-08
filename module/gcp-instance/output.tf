output "cpu-platform"{
    value = google_compute_instance.vm1.cpu_platform
    description = "cpu da vm1"
}
output "ip-interno-vm1"{
    value = google_compute_instance.vm1.network_interface[0].network_ip
    description = "ip interno da vm1"
}
output "ip-externo-vm1"{
    value = google_compute_instance.vm1.network_interface[0].access_config[0].nat_ip
    description = "ip externo da vm1"
}