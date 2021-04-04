output "external_ip_address_app-0" {
  value = yandex_compute_instance.app[0].network_interface.0.nat_ip_address
}
output "external_ip_address_app-1" {
  value = yandex_compute_instance.app[1].network_interface.0.nat_ip_address
}
output "external_ip_address_lb" {
  value = yandex_lb_network_load_balancer.balancer.listener.*.external_address_spec
}
