resource "vault_mount" "kvv1" {
  for_each    = var.secrets
  path        = each.key
  type        = "kv"
  options     = { version = "1" }
  description = each.key
}

variable "secrets" {
  default = {
    infra={}
    roboshop-dev={}
  }
}