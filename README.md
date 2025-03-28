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
module "compute-instance" {
  source  = "expero-tf-modules/compute-instance/sbercloud"
  version = "1.0.2"
  # insert the 9 required variables here
}
```  
