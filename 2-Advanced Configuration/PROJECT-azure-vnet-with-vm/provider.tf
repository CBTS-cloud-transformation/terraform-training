terraform {
  required_providers {
    aws = {
      source  = "hashicorp/azurerm"
      version = "3.88.0"
    }
  }
}

provider "azurerm" {
  features{}
}