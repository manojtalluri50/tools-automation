provider "vault" {
  address = "http://vault-internal.azdevopsb82.online:8200"
  token = var.token
}

terraform {
  backend "azurerm" {
    resource_group_name  = "project-setup-1"
    storage_account_name = "d82tfstates1"
    container_name       = "vault-tf-states"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "e466883a-f5d8-442f-b811-32657a287073"
}