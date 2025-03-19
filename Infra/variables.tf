variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "prefix" {
  type = string
}
variable "dns_prefix" {
  type = string
}
variable "default_node_pool" {
  type = object({
    name       = string
    node_count = number
    vm_size    = string
  })
}