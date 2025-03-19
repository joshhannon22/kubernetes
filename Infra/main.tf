module "network" {
  source              = "./Modules/Network"
  resource_group_name = var.resource_group_name
  location            = var.location
  prefix              = var.prefix
}

module "kubernetes" {
  source              = "./Modules/Kubernetes"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = module.network.subnet_id
  prefix              = var.prefix
  dns_prefix          = var.dns_prefix
  default_node_pool   = var.default_node_pool
}

module "acr" {
  source                      = "./Modules/ContainerRegistry"
  resource_group_name         = var.resource_group_name
  location                    = var.location
  prefix                      = "${var.prefix}joshhannonpriv"
  kubernetes_cluster_identity = module.kubernetes.cluster_identity_id
}