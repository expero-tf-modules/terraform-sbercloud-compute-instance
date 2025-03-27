terraform {
  required_providers {
    sbercloud = {
      source  = "sbercloud-terraform/sbercloud"
      version = "1.12.4"
    }
  }
}
resource "sbercloud_compute_instance" "this" {
  name               = var.instance_name
  image_id           = var.image_id
  flavor_id          = var.flavor_id
  key_pair           = var.key_pair_name
  security_group_ids = var.security_group_ids
  availability_zone  = var.availability_zone

  system_disk_type = var.system_disk_type
  system_disk_size = var.system_disk_size

  dynamic "data_disks" {
    for_each = var.data_disks
    content {
      type = data_disks.value.type
      size = data_disks.value.size
    }
  }

  delete_disks_on_termination = var.delete_disks_on_termination

  network {
    uuid = var.subnet_id
  }
}
