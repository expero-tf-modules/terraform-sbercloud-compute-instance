# Sbercloud Compute Instance Terraform module  

## 🔹 **1. Переменные**
| Название      | Описание              | Тип      | Значение по умолчанию |
|---------------|-----------------------|----------|-----------------------|
| `instance_id` | `Compute Isntance ID` | `string` | -                     |  


## 🔹 **2. Outputs**
| Название        | Описание               | 
|-----------------|------------------------|
| `instance_id`   | `Compute Instance ID`  | 
| `private_ip_v4` | `Private ipv4 address` | 


---
## 🔹 **3. Example**
```hcl
module "cce-dev" {
  source                 = "git@gitlab.phrm.tech:devops/infrastructure/terraform/modules/scloud.git//cce-cluster"
  cluster_version        = "v1.30"
  container_network_type = "overlay_l2"
  eip                    = var.eip
  enterprise_project_id  = var.eps_id
  flavor_id              = "cce.s1.small"
  name                   = "cce-dev-cluster"
  subnet_id              = var.subnet_dev_id
  vpc_id                 = var.vpc_id
}
```  
