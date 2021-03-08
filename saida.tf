output "cpu-platform"{
    value = google_compute_instance.vm2.cpu_platform
    description = "cpu da vm1"
}
output "gw-us"{
    value = google_compute_subnetwork.us-central.gateway_address
    description = "gateway address"
}

output "ip-interno-vm1"{
    value = google_compute_instance.vm1.network_interface[0].network_ip
    description = "ip interno da vm1"
}
output "ip-interno-vm2"{
    value = google_compute_instance.vm2.network_interface[0].network_ip
    description = "ip interno da vm2"
}
output "ip-externo-vm1"{
    value = google_compute_instance.vm1.network_interface[0].access_config[0].nat_ip
    description = "ip externo da vm1"
}
output "ip-externo-vm2"{
    value = google_compute_instance.vm2.network_interface[0].access_config[0].nat_ip
    description = "ip externo da vm2"
}
