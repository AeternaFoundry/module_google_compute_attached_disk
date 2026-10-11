resource "google_compute_attached_disk" "compute_attached_disks" {
  for_each = var.compute_attached_disks

  disk            = each.value.disk
  instance        = each.value.instance
  deletion_policy = each.value.deletion_policy
  device_name     = each.value.device_name
  interface       = each.value.interface
  mode            = each.value.mode
  project         = each.value.project
  zone            = each.value.zone

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

