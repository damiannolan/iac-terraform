variable "do_token" {}

module "cluster" {
  source = "../../modules/kube-digitalocean"
  
  cluster_name               = "dev"
  cluster_default_node_size  = "s-2vcpu-4gb"
  cluster_default_node_count = 3
  cluster_version            = "1.18.8-do.1"

  do_token                   = var.do_token
  do_region                  = "fra1"
  
  kubeconfig_path            = "~/.kube/dev/config"
}
