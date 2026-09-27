infra_config = {
  resource_groups = {
    "rg-micro-prod-live" = {
      location = "East US"
      tags     = { Environment = "Prod", ManagedBy = "Terraform" }
    }
  }
  container_registries = {
    "acrmicrodev5678" = {
      rg_key = "rg-micro-prod-live"
      sku    = "Basic"
    }
  }
  kubernetes_clusters = {
    "aks-micro-prod-live" = {
      rg_key     = "rg-micro-prod-live"
      dns_prefix = "aksmicrodev"
      default_node_pool = {
        name       = "default"
        node_count = 2
        vm_size    = "Standard_B2s"
      }
    }
  }
}
