output "instance_id" {
  value = sbercloud_compute_instance.this.id
}

output "private_ip_v4" {
  value = sbercloud_compute_instance.this.access_ip_v4
}
