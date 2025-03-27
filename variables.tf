variable "instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "image_id" {
  description = "The ID of the image to use for the instance"
  type        = string
}

variable "flavor_id" {
  description = "The flavor ID specifying the instance type"
  type        = string
}

variable "key_pair_name" {
  description = "The name of the key pair for SSH access"
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs assigned to the instance"
  type        = list(string)
}

variable "availability_zone" {
  description = "The availability zone where the instance will be created"
  type        = string
}

variable "system_disk_type" {
  description = "The type of the system disk (e.g., SAS, SSD)"
  type        = string
}

variable "system_disk_size" {
  description = "The size of the system disk in GB"
  type        = number
}

variable "data_disks" {
  description = "A list of additional data disks attached to the instance"
  type = list(object({
    type = string
    size = number
  }))
  default = []
}

variable "delete_disks_on_termination" {
  description = "Whether to delete the attached disks when the instance is terminated"
  type        = bool
  default     = true
}

variable "subnet_id" {
  description = "The UUID of the subnet to attach the instance to"
  type        = string
}