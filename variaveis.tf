variable "vm-1" {
    type = string
    default = "vm1"
}
variable "vm-2" {
    type = string
    default = "vm2"
}
variable "machine_type" {
    type = string
    default = "f1-micro"
}
variable "zone1" {
    type = string
    default = "us-central1-a"
}
variable "zone2" {
    type = string
    default = "asia-east1-a"
}
variable "allow-stop" {
    type = bool
    default = true
}
variable "exec-command"{
    type = string
    default = "sudo apt-get update && sudo apt-get install nginx -y"
}
variable "ssh-key"{
    type = string
    default = "admin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSMgBElcjZXm5rfm8KObue3gViv2eWWc8KdEMNFwBWPIheXaq+seqxjBhfqjOI+jKhwjuWm3WuI3ZYVTLP+LmPpVYHilIkxUu2Z86ZdC0JL9Lcd8yBKBrCkZr+MbonrcFyzz0WXp5keW0nvlkjqCmkfxHBEGeVR8CzVuUIiDz7giLiaNMPpoK0fvYLLFB1Wt4mf7k2Ox3nOqZy6JJ6slCWzc6QzHUt3Wni1LiYAvI7GRT0SXpR+kGJrhwGNqK6WXpiFdpwsYDGTyyKeqgIOCujSEH23Iw19EIoJ6hwd1GZlKmyG7NDelDlSqfjFqICv8wm8FiSp7DEWFFHCM/AWAo0KryU9c8B+JT51mVqHy8Go5F52gMzVMoLRljmeUAHmig6xmvWyS3Fe1QX6w8GJ1Z2FLtMQsSTfMSXInqIlb7nDWM6rHjF0kqa3H8r31eR8cK5YXkfuBufwI4Twl1CWjgu2TGZufR2fYGvYTObXo4RIG+yZDLhrqSJ6VuoUcxNFh0= hiroyuki@hiroyuki-workspace"
}
variable "image"{
    type = string
    default = "debian-cloud/debian-9"
}