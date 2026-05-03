module "vm" {
  for_each = var.tools
  source     = "./vm-module"
  component  = each.key
  ssh_username=var.ssh_username
  ssh_password=var.ssh_password
  port= each.value[port]
}

variable "tools" {
  default = {

    vault={
      port=8200

    }
  }
}

variable "ssh_username" {}
variable "ssh_password" {}

terraform {
  backend "azurerm" {
    resource_group_name  = "project-setup-1"
    storage_account_name = "d82tfstates"
    container_name       = "tools-tf-state"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "cc2aa876-d510-47ae-88fd-87389092e715"
}

