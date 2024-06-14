terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "production-terraform"
    storage_account_name = "cdprodtfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  storage_use_azuread = true

}
