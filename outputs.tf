output "compute_attached_disks_id" {
  description = "Map of id values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no id are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_attached_disks_deletion_policy" {
  description = "Map of deletion_policy values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_attached_disks_device_name" {
  description = "Map of device_name values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no device_name are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.device_name if v.device_name != null && length(v.device_name) > 0 }
}
output "compute_attached_disks_disk" {
  description = "Map of disk values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no disk are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.disk if v.disk != null && length(v.disk) > 0 }
}
output "compute_attached_disks_instance" {
  description = "Map of instance values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no instance are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "compute_attached_disks_interface" {
  description = "Map of interface values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no interface are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.interface if v.interface != null && length(v.interface) > 0 }
}
output "compute_attached_disks_mode" {
  description = "Map of mode values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no mode are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "compute_attached_disks_project" {
  description = "Map of project values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no project are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_attached_disks_zone" {
  description = "Map of zone values across all compute_attached_disks, keyed the same as var.compute_attached_disks except keys with no zone are omitted"
  value       = { for k, v in google_compute_attached_disk.compute_attached_disks : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

