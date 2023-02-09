terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.42.0"
    }
  }
  backend "remote" {
    organization = "level20-devops"

    workspaces {
      name = "security-ms-defender-for-cloud-ws"
    }
  }
}

provider "azurerm" {
  features {}
}