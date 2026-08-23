infra_config = {
  resource_groups = {
    "rg-micro-prod" = {
      location = "southeastasia"
      tags     = { Environment = "Dev", ManagedBy = "Terraform" }
    }
  }
  container_registries = {
    "acrmicrodevtest" = {
      rg_key = "rg-micro-prod"
      sku    = "Basic"
    }
  }
  kubernetes_clusters = {
    "aks-micro-dev" = {
      rg_key     = "rg-micro-prod"
      dns_prefix = "aksmicrodev"
      default_node_pool = {
        name       = "default"
        node_count = 2
        vm_size    = "Standard_B2s_v2"
      }
    }
  }
}
