module "gcp_compute" {
  source = "../../modules/gce-skylake-multi-server-with-1-disk"

  # gcp credentials
  project              = var.project
  compute_disk_project = var.project

  # add disk
  additional_disk_size = var.additional_disk_size
  additional_disk_type = var.additional_disk_type

  #compute detail
  count_compute  = var.count_compute
  compute_name   = var.compute_name
  compute_type   = var.compute_type
  compute_zones  = var.compute_zones
  ip_forward     = var.ip_forward
  images_name    = var.images_name
  size_root_disk = var.size_root_disk
  type_root_disk = var.type_root_disk

  #label and tags
  environment   = var.environment
  service_group = var.service_group
  service_type  = var.service_type
}