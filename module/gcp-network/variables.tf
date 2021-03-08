variable "vpc-name"{
    type = string
    default = "vpc"
}
variable "auto-network"{
    type = bool
    default = false
}
variable "subnet-name-us"{
    type = string
    default = "us-central"
}
variable "ip-us-subnet"{
    type = string
    default = "192.168.10.0/24"    
}
variable "subnet-us-region"{
    type = string
    default = "us-central1"    
}
variable "subnet-name-asia"{
    type = string
    default = "asia-east"
}
variable "ip-asia-subnet"{
    type = string
    default = "192.168.20.0/24"    
}
variable "subnet-asia-region"{
    type = string
    default = "asia-east1"    
}
variable "fw-name"{
    type = string
    default = "fw-all"    
}