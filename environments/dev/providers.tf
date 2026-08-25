terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "dev0tfstate"
    container_name       = "tfstate"
    key                  = "devAKS.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
