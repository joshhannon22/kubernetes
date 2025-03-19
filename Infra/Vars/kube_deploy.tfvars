resource_group_name = "aks-resources"
location            = "eastus"
prefix              = "test"
dns_prefix          = "akstest"
default_node_pool = {
  name       = "defaultpool"
  node_count = 2
  vm_size    = "Standard_B2s"
}