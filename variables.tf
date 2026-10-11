variable "compute_attached_disks" {
  description = <<EOT
Map of compute_attached_disks, attributes below
Required:
    - disk
    - instance
Optional:
    - deletion_policy
    - device_name
    - interface
    - mode
    - project
    - zone
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    disk            = string
    instance        = string
    deletion_policy = optional(string)
    device_name     = optional(string)
    interface       = optional(string)
    mode            = optional(string)
    project         = optional(string)
    zone            = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_attached_disks : (
        v.mode == null || (contains(["READ_ONLY", "READ_WRITE"], v.mode))
      )
    ])
    error_message = "must be one of: \"READ_ONLY\", \"READ_WRITE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_attached_disks : (
        v.interface == null || (contains(["SCSI", "NVME"], v.interface))
      )
    ])
    error_message = "must be one of: \"SCSI\", \"NVME\""
  }
}

