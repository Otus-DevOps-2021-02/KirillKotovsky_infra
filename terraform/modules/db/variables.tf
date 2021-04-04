variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "fd8bueccrtn2vpsmbt2e"
}
variable "count_of_instance_db" {
  default = 1
}
variable public_key_path {
  default = "~/.ssh/appuser.pub"
}
variable subnet_id {
  description = "Subnets for modules"
}
