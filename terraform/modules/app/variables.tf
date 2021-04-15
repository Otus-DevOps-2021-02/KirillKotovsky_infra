variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "fd89rsslvtedsav6q6bj"
}
variable "count_of_instance_app" {
  default = 1
}
variable public_key_path {
  default = "~/.ssh/appuser.pub"
}
variable subnet_id {
  description = "Subnets for modules"
}
