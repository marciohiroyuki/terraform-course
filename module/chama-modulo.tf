module "create-vpc" {
    source = "./gcp-network"
    vpc-name = "vpc-aula"
    auto-network = false
    subnet-name-us = "us-east"
    ip-us-subnet = "10.0.0.0/8"
    subnet-us-region = "us-east1"
    subnet-name-asia = "asia-east-rh"
    ip-asia-subnet = "192.168.20.0/24"
    subnet-asia-region = "asia-east1"
    fw-name = "fw-module"
}

module "create-vm" {
    source = "./gcp-instance"
    vm-name = "vm-modulo"
    zone = "us-east1-b"
    subnetwork = module.create-vpc.subnet-us-self-link
}

module "create-vm-rh" {
    source = "./gcp-instance"
    vm-name = "vm-rh"
    zone = "asia-east1-a"
    subnetwork = module.create-vpc.subnet-asia-self-link
}