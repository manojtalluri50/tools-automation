module "create-secrets" {
  for_each = var.secrets
  source   = "./create-secrets"
  kv_path  = each.key
}

variable "secrets" {
  default = {
    infra= {
      ssh= {
        admin_username="roboshop-ansible"
        admin_password="Devops@123456"
      }
    }
    roboshop-dev={}
  }
}