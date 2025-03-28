# Sbercloud Compute Instance Terraform module  

## 🔹 **1. Variables**
| Name          | Description           | Type     | Default value |
|---------------|-----------------------|----------|---------------|
| `instance_id` | `Compute Isntance ID` | `string` | -             |  


## 🔹 **2. Outputs**
| Name            | Description            | 
|-----------------|------------------------|
| `instance_id`   | `Compute Instance ID`  | 
| `private_ip_v4` | `Private ipv4 address` | 


---
## 🔹 **3. Example**
```hcl
data "sbercloud_images_image" "compute_instance" {
  name        = "Ubuntu 20.04 server 64bit"
  most_recent = true
}

resource "sbercloud_compute_keypair" "compute_instance" {
  name = "compute_instance-keypair"
  public_key = var.public_key
}

module "compute_instance" {
  source  = "expero-tf-modules/compute-instance/sbercloud"
  availability_zone = "ru-moscow-1a"
  flavor_id = "s7n.xlarge.2"
  image_id = data.sbercloud_images_image.compute_instance.id
  instance_name = "compute-instance"
  key_pair_name = sbercloud_compute_keypair.compute_instance.name
  security_group_ids = [module.secgroup_ecompute_instance.id]
  subnet_id = var.subnet_id
  system_disk_size = 40
  system_disk_type = "SSD"
  data_disks = [
    { type = "SSD", size = 50}
  ]
}
```  
